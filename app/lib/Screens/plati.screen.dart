import 'package:app/CustomWidgets/Widgets_plati/firstWidget.dart';
import 'package:app/CustomWidgets/Widgets_plati/lastWidget.dart';
import 'package:app/CustomWidgets/Widgets_plati/secondWidget.dart';
import 'package:app/CustomWidgets/Widgets_plati/thirdWidget.dart';
import 'package:app/main.dart';
import 'package:app/models/UserModelTest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../services/users.services.dart';

class Plati extends StatefulWidget {
  const Plati({key, required this.updateSelectedBankAccount}) : super(key: key);
  final Function updateSelectedBankAccount;
  @override
  State<Plati> createState() => _PlatiState();
}

class _PlatiState extends State<Plati> {
  dynamic user;
  void getMeLocal() async {
    user = await getMe();
    setState(() {
      user;
    });
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    getMeLocal();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var bankAccountWidgetList = [
      if (user != null)
        ...user['bank_account'].map((ba) => LastWidget(
              name: 'Cont economii ${ba["currency"]}',
              iban: "RO" + ba['id'].toString().toUpperCase(),
              ammount: '${ba["amount"]}',
              size: size,
              unit: "${ba["currency"]}",
              updateSelectedBankAccount: widget.updateSelectedBankAccount,
            ))
    ];
    return Container(
      height: size.height,
      color: Color.fromARGB(255, 203, 203, 203),
      child: Column(
        children: [
          FirstWidget(),
          SecondWidget(
            account: 'CATRE CONTUL',
          ),
          ThirdWidget(),
          ...bankAccountWidgetList,

          /* Text(("${money != null ? money.toString() : ""} RON")) */
        ],
      ),
    );
  }
}
