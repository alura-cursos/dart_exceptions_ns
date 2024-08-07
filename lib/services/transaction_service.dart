import 'package:dart_exceptions/helpers/helper_taxes.dart';
import 'package:dart_exceptions/models/account.dart';
import 'package:dart_exceptions/services/account_service.dart';

class TransactionService {
  final AccountService _accountService = AccountService();

  makeTransaction({
    required String idSender,
    required String idReceiver,
    required double amount,
  }) async {
    List<Account> listAccount = await _accountService.getAll();

    Account senderAccount = listAccount.firstWhere(
      (acc) => acc.id == idSender,
    );

    Account receiverAccount = listAccount.firstWhere(
      (acc) => acc.id == idReceiver,
    );

    print(senderAccount);
    print(receiverAccount);
    print(calculateTaxesByAccount(sender: senderAccount, amount: amount));
  }
}
