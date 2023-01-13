import 'package:app/CustomWidgets/Widgets_payment/Widgets_NewPayment/amountWidget.dart';
import 'package:app/CustomWidgets/Widgets_payment/Widgets_NewPayment/desciptionWidget.dart';
import 'package:app/CustomWidgets/Widgets_payment/Widgets_NewPayment/descriptionTextWidget.dart';
import 'package:app/CustomWidgets/Widgets_payment/Widgets_NewPayment/ibanNameWidget.dart';
import 'package:app/CustomWidgets/Widgets_payment/Widgets_NewPayment/sendWidget.dart';
import 'package:app/main.dart';
import 'package:flutter/material.dart';
import '../CustomWidgets/Widgets_payment/Widgets_PachetZeroTot/pachetZeroTotWidget.dart';
import '../CustomWidgets/Widgets_payment/accountWidget.dart';
import '../CustomWidgets/Widgets_payment/scanWidget.dart';
import '../CustomWidgets/Widgets_payment/secondWidget.dart';
import '../services/transactions.service.dart';
import '../services/users.services.dart';

class NewPayment2 extends StatefulWidget {
  const NewPayment2({super.key});

  @override
  State<NewPayment2> createState() => _NewPayment2State();
}

class _NewPayment2State extends State<NewPayment2> {
  dynamic users;

  List bankAccounts = [];
  dynamic newSelectedBankAccount = null;
  dynamic bankAccountsWidgetList = [];
  void getUsersLocal() async {
    users = await getUsers();
    print(users);
    if (users != null) {
      users.forEach((user) => {
            user["bank_account"].forEach((ba) => {bankAccounts.add(ba)})
          });
    }

    setState(() {
      bankAccounts;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsersLocal();
  }

  void sendMoneyLocal(bankAccountParam) async {
    var resp = await sendMoney({
      "senderBankAccountId": selectedBankAccount["id"],
      "recipientBankAccountId": bankAccountParam["id"],
      "amount": 50,
    });
    if (resp['success']) {
      setState(() {
        newSelectedBankAccount = {
          "id": resp['data'][1]["id"].toString(),
          "amount": resp['data'][1]["amount"].toString(),
          "currency": resp['data'][1]["currency"].toString(),
        };
      });
    }
    print(resp);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String description;
    if (bankAccounts.length != 0) {
      bankAccountsWidgetList = bankAccounts.map((ba) => AccountWidget(
          size: size,
          name: "Pachet",
          iban: ba["id"].toString(),
          ammount: "",
          unit: ba["currency"].toString(),
          pressAction: sendMoneyLocal));
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 213, 213, 213),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Plata noua',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SecondWidget(account: 'DIN CONTUL'),
            AccountWidget(
                size: size,
                name: "Pachet",
                iban: "RO98BTRL0000000098760234",
                ammount: "9000",
                unit: "EUR",
                pressAction: sendMoneyLocal),
            SecondWidget(account: 'IN CONTUL'),
            ibanNameWidget(),
            amountUnitWidget(),
            desciptionWidget(description: 'DESCRIERE'),
            descriptionTextWidget(),
            sendWidget()
          ],
        ),
      ),
    );
  }
}
