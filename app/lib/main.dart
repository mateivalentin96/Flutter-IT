import 'package:app/CustomWidgets/Widgets_dashbord/Widgets_YourCards/visaCardWidget.dart';
import 'package:app/CustomWidgets/Widgets_dashbord/Widgets_YourCards/yourCardsWidget.dart';
import 'package:app/Layouts/AppLayout.dart';
import 'package:app/Layouts/MainLayout.dart';
import 'package:app/Layouts/NewPayment.dart';
import 'package:app/Screens/dashboard.screen.dart';
import 'package:app/Screens/maiMulte.screen.dart';
import 'package:app/Screens/messages.screen.dart';
import 'package:app/Screens/plati.screen.dart';
import 'package:app/Screens/reincarcare.screen.dart';
import 'package:app/Screens/sabloane.screen.dart';
import 'package:app/services/share_preferences.service.dart';
import 'package:flutter/material.dart';

import 'Layouts/MessagesLayout.dart';

void main() {
  runApp(const MyApp());
}

var selectedBankAccount = {
  "id": "",
  "amount": "",
  "currency": "",
};
void updateSelectedBankAccount(newBankAccount) {
  selectedBankAccount = newBankAccount;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var a = 2;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => AppLayout(),
        '/dashboard': (context) => MainLayout(screen: DashBoard()),
        '/plati': (context) => MainLayout(
            screen:
                Plati(updateSelectedBankAccount: updateSelectedBankAccount)),
        '/sabloane': (context) => MainLayout(screen: Sabloane()),
        '/reincarcare': (context) => MainLayout(screen: Reincarcare()),
        '/maiMulte': (context) => MainLayout(screen: MaiMulte()),
        '/messages': (context) => MessagesLayout(screen: Messages()),
        '/newPayment': (context) =>
            NewPayment(selectedBankAccount: selectedBankAccount),
        '/yourCards': (context) => YourCards(),
        '/visaCard': (context) => VisaCard(),

        // When navigating to the "/second" route, build the SecondScreen widget.
      },
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}
