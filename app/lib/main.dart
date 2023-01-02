import 'package:app/Layouts/AppLayout.dart';
import 'package:app/Layouts/MainLayout.dart';
import 'package:app/Screens/dashboard.screen.dart';
import 'package:app/Screens/maiMulte.screen.dart';
import 'package:app/Screens/plati.screen.dart';
import 'package:app/Screens/reincarcare.screen.dart';
import 'package:app/Screens/sabloane.screen.dart';
import 'package:app/services/share_preferences.service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => AppLayout(),
        '/plati': (context) => MainLayout(screen: Plati()),
        '/sabloane': (context) => MainLayout(screen: Sabloane()),
        '/reincarcare': (context) => MainLayout(screen: Reincarcare()),
        '/maiMulte': (context) => MainLayout(screen: MaiMulte()),

        // When navigating to the "/second" route, build the SecondScreen widget.
      },
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}
