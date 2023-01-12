import 'dart:convert';

import 'package:http/http.dart' as http;

dynamic sendMoney(dynamic senderBankAccountId, dynamic recipientBankAccountId,
    dynamic amount) async {
  var response = await http.post(
      Uri.parse(
          "http://ec2-3-84-124-37.compute-1.amazonaws.com/user/sendMoney"),
      body: {
        "senderBankAccountId": "senderBankAccountId",
        "recipientBankAccountId": "recipientBankAccountId",
        "amount": 50
      });
  var data = response.body;
  return jsonDecode(data);
}
