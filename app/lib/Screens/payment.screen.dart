import 'package:app/CustomWidgets/Widgets_payment/scanWidget.dart';
import 'package:app/CustomWidgets/Widgets_payment/accountWidget.dart';
import 'package:app/CustomWidgets/Widgets_payment/secondWidget.dart';
import 'package:app/CustomWidgets/Widgets_payment/chooseAccountWidget.dart';
import 'package:app/Layouts/NewPayment2.dart';
import 'package:app/main.dart';
import 'package:app/models/UserModelTest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../services/users.services.dart';

class Payment extends StatefulWidget {
  const Payment({key, required this.updateSelectedBankAccount})
      : super(key: key);
  final Function updateSelectedBankAccount;
  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
        ...user['bank_account'].map((ba) => AccountWidget(
              name: 'Cont economii ${ba["currency"]}',
              iban: ba['id'].toString(),
              ammount: '${ba["amount"]}',
              size: size,
              unit: "${ba["currency"]}",
              pressAction: widget.updateSelectedBankAccount,
            ))
    ];
    return Container(
      height: size.height,
      color: Color.fromARGB(255, 203, 203, 203),
      child: Column(
        children: [
          ScanWidget(),
          SecondWidget(
            account: 'DIN CONTUL',
          ),
          ChooseAccountWidget(),
          ...bankAccountWidgetList,
          MaterialButton(
            color: Colors.blue,
            child: Text('Test Button'),
            onPressed: () {
              if (ModalRoute.of(context)?.settings.name != "/newPayment2")
                Navigator.pushNamed(context, '/newPayment2');
            },
          )

          /* Text(("${money != null ? money.toString() : ""} RON")) */
        ],
      ),
    );
  }
}
