import 'dart:convert';

import 'package:app/models/UserModel.dart';
import "package:http/http.dart" as http;

import 'share_preferences.service.dart';

void getUsers() async {
  var response = await http.get(
      Uri.parse('http://ec2-3-84-124-37.compute-1.amazonaws.com/user/'),
      headers: {"Authorization": "Bearer ${await readTokenFromStorage()}"});
  var data = response.body;
}

dynamic getMe() async {
  var response = await http.get(
      Uri.parse('http://ec2-3-84-124-37.compute-1.amazonaws.com/user/me'),
      headers: {"Authorization": "Bearer ${await readTokenFromStorage()}"});
  var data = response.body;

  return jsonDecode(data);
}

addNumbers() {}
