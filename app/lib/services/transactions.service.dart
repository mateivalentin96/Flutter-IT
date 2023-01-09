import 'package:http/http.dart' as http;

Object sendMoney(String senderBankAccountId, String recipientBankAccountId,
    int amount) async {
  var response = await http.post(
      Uri.parse(
          "http://ec2-3-84-124-37.compute-1.amazonaws.com/user/sendMoney"),
      body: {
        "senderBankAccountId": senderBankAccountId,
        "recipientBankAccountId": recipientBankAccountId,
        "amount": amount
      });
  var data = response.body;
}
