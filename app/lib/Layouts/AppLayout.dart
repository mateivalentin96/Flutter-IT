import 'package:app/Layouts/MainLayout.dart';
import 'package:app/Screens/dashboard.screen.dart';
import 'package:app/services/share_preferences.service.dart';
import 'package:flutter/material.dart';
import '../services/auth.services.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  @override
  String email = '';
  String password = '';
  dynamic returnedData = '';
  String token = '';
  bool isSelected = false;
  Widget build(BuildContext context) {
    return token != ""
        ? MainLayout(screen: DashBoard())
        : Scaffold(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              title: const Text(''),
              automaticallyImplyLeading: false,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Center(
                      child: Container(
                        width: 200,
                        height: 150,
                        child: Image.asset(
                          'images/logo_Raiffeisen_2.jpg',
                          width: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText:
                              'Enter valid email id as raiffeisen@yahoo.com'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextField(
                      obscureText: true,
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter secure password'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {},
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15),
                    ),
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 50,
                    width: 250,
                    child: MaterialButton(
                      color: Colors.yellow,
                      onPressed: () async {
                        returnedData = await logIn(email, password);
                        if (returnedData['success'] == true) {
                          token = returnedData['token'];

                          await storeTokenToStorage(token);
                          setState(() {
                            token;
                          });
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 25),
                      ),
                    ),
                  ),
                  const Text(''),
                  const Text(''),
                  InkWell(
                    child: const Text('New User? Create Account'),
                  ),
                ],
              ),
            ),
          );
  }
}
