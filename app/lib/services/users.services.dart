import 'dart:convert';

import 'package:app/models/UserModel.dart';
import "package:http/http.dart" as http;

import 'share_preferences.service.dart';

void logIn() async {
  var response = await http.get(Uri.parse(
      'http://ec2-3-84-124-37.compute-1.amazonaws.com/test-val/sg/1'));
  var data = response.body;
  var user;
  print(data);
  user = User.fromJson(jsonDecode(data));
}

void getUsers() async {
  var response = await http.get(
      Uri.parse('http://ec2-3-84-124-37.compute-1.amazonaws.com/user/'),
      headers: {"Authorization": "Bearer ${await readTokenFromStorage()}"});
  var data = response.body;
  print("ok");
  print(data);
}
