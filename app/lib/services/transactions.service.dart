import 'dart:convert';

import 'package:http/http.dart' as http;

dynamic sendMoney(dynamic argBody) async {
  print(argBody);
  var response = await http.post(
      Uri.parse(
          "http://ec2-3-84-124-37.compute-1.amazonaws.com/user/sendMoney"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(argBody));
  var data = response.body;
  return jsonDecode(data);
}
