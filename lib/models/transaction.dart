class Transaction {
  String id;
  String senderAccountId;
  String receiverAccountId;
  DateTime date;
  double amount;
  double taxes;

  Transaction({});

  factory Transaction.fromMap(Map<String, dynamic> map);

  Map<String, dynamic> toMap(){
    return {};
  }
}
