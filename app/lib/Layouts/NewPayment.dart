import 'package:app/CustomWidgets/Widgets_plati/Widgets_PachetZeroTot/pachetZeroTotWidget.dart';
import 'package:app/CustomWidgets/Widgets_plati/secondWidget.dart';
import 'package:app/main.dart';
import 'package:app/services/transactions.service.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/Widgets_plati/scanWidget.dart';
import '../CustomWidgets/Widgets_plati/accountWidget.dart';
import '../CustomWidgets/Widgets_plati/chooseAccountWidget.dart';
import '../services/users.services.dart';

class NewPayment extends StatefulWidget {
  const NewPayment({key, required this.selectedBankAccount}) : super(key: key);
  final Map<String, String> selectedBankAccount;
  @override
  State<NewPayment> createState() => _NewPaymentState();
}

class _NewPaymentState extends State<NewPayment> {
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
    String email;
    Size size = MediaQuery.of(context).size;
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
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Plata noua'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ScanWidget(),
            SecondWidget(account: 'DIN CONTUL'),
            AccountWidget(
                size: size,
                name: "Pachet",
                iban: selectedBankAccount["id"].toString(),
                ammount: newSelectedBankAccount == null
                    ? selectedBankAccount["amount"].toString()
                    : newSelectedBankAccount["amount"].toString(),
                unit: selectedBankAccount["currency"].toString(),
                pressAction: updateSelectedBankAccount),
            SecondWidget(account: 'IN CONTUL'),
            PachetZeroTot(),
            if (bankAccounts.length != 0) ...bankAccountsWidgetList,
          ],
        ),
      ),
    );
  }
}
