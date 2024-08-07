import 'dart:convert';
import 'dart:math';

import 'package:dart_exceptions/api_key.dart';
import 'package:dart_exceptions/helpers/helper_taxes.dart';
import 'package:dart_exceptions/models/account.dart';
import 'package:dart_exceptions/models/transaction.dart';
import 'package:dart_exceptions/services/account_service.dart';
import 'package:http/http.dart';

class TransactionService {
  final AccountService _accountService = AccountService();
  String url = "https://api.github.com/gists/413c0aefe6c6abc464581c29029c8ace";

  makeTransaction({
    required String idSender,
    required String idReceiver,
    required double amount,
  }) async {
    List<Account> listAccounts = await _accountService.getAll();

    if (listAccounts.where((acc) => acc.id == idSender).isEmpty) {
      return null;
    }

    Account senderAccount = listAccounts.firstWhere(
      (acc) => acc.id == idSender,
    );

    if (listAccounts.where((acc) => acc.id == idReceiver).isEmpty) {
      return null;
    }

    Account receiverAccount = listAccounts.firstWhere(
      (acc) => acc.id == idReceiver,
    );

    double taxes = calculateTaxesByAccount(
      sender: senderAccount,
      amount: amount,
    );

    if (senderAccount.balance < amount + taxes) {
      return null;
    }

    senderAccount.balance -= (amount + taxes);
    receiverAccount.balance += amount;

    listAccounts[listAccounts.indexWhere(
      (acc) => acc.id == senderAccount.id,
    )] = senderAccount;

    listAccounts[listAccounts.indexWhere(
      (acc) => acc.id == receiverAccount.id,
    )] = receiverAccount;

    Transaction transaction = Transaction(
      id: (Random().nextInt(89999) + 10000).toString(),
      senderAccountId: senderAccount.id,
      receiverAccountId: receiverAccount.id,
      date: DateTime.now(),
      amount: amount,
      taxes: taxes,
    );

    await _accountService.save(listAccounts);
    await addTransaction(transaction);
  }

  Future<List<Transaction>> getAll() async {
    Response response = await get(Uri.parse(url));

    Map<String, dynamic> mapResponse = json.decode(response.body);
    List<dynamic> listDynamic =
        json.decode(mapResponse["files"]["transactions.json"]["content"]);

    List<Transaction> listTransactions = [];

    for (dynamic dyn in listDynamic) {
      Map<String, dynamic> mapTrans = dyn as Map<String, dynamic>;
      Transaction transaction = Transaction.fromMap(mapTrans);
      listTransactions.add(transaction);
    }

    return listTransactions;
  }

  addTransaction(Transaction trans) async {
    List<Transaction> listTransactions = await getAll();
    listTransactions.add(trans);
    save(listTransactions);
  }

  save(List<Transaction> listTransactions) async {
    List<Map<String, dynamic>> listMaps = [];

    for (Transaction trans in listTransactions) {
      listMaps.add(trans.toMap());
    }

    String content = json.encode(listMaps);

    await post(
      Uri.parse(url),
      headers: {
        "Authorization": "Bearer $githubApiKey",
      },
      body: json.encode({
        "description": "accounts.json",
        "public": true,
        "files": {
          "transactions.json": {"content": content}
        }
      }),
    );
  }
}
