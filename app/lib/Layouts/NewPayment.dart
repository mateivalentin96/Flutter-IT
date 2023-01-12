import 'package:app/CustomWidgets/Widgets_plati/Widgets_PachetZeroTot/pachetZeroTotWidget.dart';
import 'package:app/CustomWidgets/Widgets_plati/secondWidget.dart';
import 'package:app/main.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/Widgets_plati/firstWidget.dart';
import '../CustomWidgets/Widgets_plati/lastWidget.dart';
import '../CustomWidgets/Widgets_plati/thirdWidget.dart';

class NewPayment extends StatefulWidget {
  const NewPayment({key, required this.selectedBankAccount}) : super(key: key);
  final Map<String, String> selectedBankAccount;
  @override
  State<NewPayment> createState() => _NewPaymentState();
}

class _NewPaymentState extends State<NewPayment> {
  @override
  Widget build(BuildContext context) {
    String email;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 213, 213, 213),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Plata noua'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FirstWidget(),
            SecondWidget(account: 'DIN CONTUL'),
            LastWidget(
                size: size,
                name: "Pachet",
                iban: selectedBankAccount["id"].toString(),
                ammount: selectedBankAccount["amount"].toString(),
                unit: selectedBankAccount["currency"].toString(),
                updateSelectedBankAccount: updateSelectedBankAccount),
            SecondWidget(account: 'IN CONTUL'),
            PachetZeroTot()
          ],
        ),
      ),
    );
  }
}
