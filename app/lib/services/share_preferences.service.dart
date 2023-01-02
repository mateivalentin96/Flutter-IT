// Obtain shared preferences.
import 'package:shared_preferences/shared_preferences.dart';

Future<void> storeTokenToStorage(String token) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', token);
}

Future<void> deleteTokenFromStorage() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('token');
}

readTokenFromStorage() async {
  final prefs = await SharedPreferences.getInstance();
  String token = prefs.getString("token")!;
  print(token);
  return token;
}
