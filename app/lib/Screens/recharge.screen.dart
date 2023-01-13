import 'package:app/CustomWidgets/Widgets_recharge/fromAccountWidget.dart';
import 'package:app/CustomWidgets/Widgets_recharge/chooseOperatorWidget.dart';
import 'package:app/CustomWidgets/Widgets_recharge/rechargeWidget.dart';
import 'package:app/CustomWidgets/Widgets_recharge/accountRechargeWidget.dart';
import 'package:app/CustomWidgets/Widgets_recharge/operatorWidget.dart';
import 'package:flutter/material.dart';

class Recharge extends StatefulWidget {
  const Recharge({super.key});

  @override
  State<Recharge> createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Container(
      color: Color.fromARGB(255, 210, 210, 210),
      child: Column(
        children: [
          FromAccountWidget(),
          AccountRechargeWidget(),
          OperatorWidget(),
          ChooseOperatorWidget(),
          RechargeWidget(
            logo: 'images/logo-vodafone.jpg',
            nameOperator: 'Vodafone',
          ),
          RechargeWidget(
              logo: 'images/logo-telekom.jpg', nameOperator: 'Telekom'),
          RechargeWidget(
              logo: 'images/logo-orange.jpg', nameOperator: 'Orange'),
        ],
      ),
    ));
    ;
  }
}
