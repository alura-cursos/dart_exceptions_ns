import 'package:dart_exceptions/screens/account_screen.dart';

// void main() {
//   AccountScreen accountScreen = AccountScreen();
//   accountScreen.initializeStream();
//   accountScreen.runChatBot();
// }

void main() {
  print("Começou a main");
  function01();
  print("Finalizou a main");
}

void function01() {
  print("Começou a Função 01");
  function02();
  print("Finalizou a Função 01");
}

void function02() {
  print("Começou a Função 02");
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
  print("Finalizou a Função 02");
}
