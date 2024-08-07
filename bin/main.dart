import 'package:dart_exceptions/exceptions/transaction_exceptions.dart';
import 'package:dart_exceptions/screens/account_screen.dart';
import 'package:dart_exceptions/services/transaction_service.dart';

void main() {
  TransactionService()
      .makeTransaction(
    idSender: "ID001",
    idReceiver: "ID002",
    amount: 5000,
  )
      .catchError(
    (e) {
      print(e.message);
      print(
          "${e.cause.name} possui saldo ${e.cause.balance} que é menor que ${e.amount + e.taxes}");
    },
    test: (error) => error is InsufficientFundsException,
  ).then(
    (value) {},
  );

  AccountScreen accountScreen = AccountScreen();
  accountScreen.initializeStream();
  accountScreen.runChatBot();
}

// void main() async {
//   try {
//     await TransactionService().makeTransaction(
//       idSender: "ID001",
//       idReceiver: "ID002",
//       amount: 5000,
//     );
//   } on InsufficientFundsException catch (e) {
//     print(e.message);
//     print(
//         "${e.cause.name} possui saldo ${e.cause.balance} que é menor que ${e.amount + e.taxes}");
//   }
//   // AccountScreen accountScreen = AccountScreen();
//   // accountScreen.initializeStream();
//   // accountScreen.runChatBot();
// }

// void main() {
//   print("Começou a main");
//   function01();
//   print("Finalizou a main");
// }

// void function01() {
//   print("Começou a Função 01");
//   function02();
//   print("Finalizou a Função 01");
// }

// void function02() {
//   print("Começou a Função 02");
//   for (int i = 1; i <= 5; i++) {
//     print(i);
//   }
//   print("Finalizou a Função 02");
// }
