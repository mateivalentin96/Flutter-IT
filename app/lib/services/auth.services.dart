import 'dart:convert';

import 'package:app/models/UserModel.dart';
import 'package:http/http.dart' as http;

Object logIn(String email, String password) async {
  var response = await http.post(
      Uri.parse("http://ec2-3-84-124-37.compute-1.amazonaws.com/auth/login"),
      body: {"email": email, "password": password});
  var data = response.body;

  return jsonDecode(data);
}
