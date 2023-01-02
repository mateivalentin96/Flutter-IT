import 'package:app/CustomWidgets/Widgets_reincarcare/firstWidgetReincarcare.dart';
import 'package:app/CustomWidgets/Widgets_reincarcare/fourthWidgetReincarcare.dart';
import 'package:app/CustomWidgets/Widgets_reincarcare/lastWidgetReincarcare.dart';
import 'package:app/CustomWidgets/Widgets_reincarcare/secondWidgetReincarcare.dart';
import 'package:app/CustomWidgets/Widgets_reincarcare/thirdWidgetReincarcare.dart';
import 'package:flutter/material.dart';

class Reincarcare extends StatefulWidget {
  const Reincarcare({super.key});

  @override
  State<Reincarcare> createState() => _ReincarcareState();
}

class _ReincarcareState extends State<Reincarcare> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Container(
      color: Color.fromARGB(255, 210, 210, 210),
      child: Column(
        children: [
          FirstWidgetReincarcare(),
          SecondWidgetReincarcare(),
          ThirdWidgetReincarcare(),
          FourthWidgetReincarcare(),
          LastWidgetReincarcare(
            logo: 'images/logo-vodafone.jpg',
            nameOperator: 'Vodafone',
          ),
          LastWidgetReincarcare(
              logo: 'images/logo-telekom.jpg', nameOperator: 'Telekom'),
          LastWidgetReincarcare(
              logo: 'images/logo-orange.jpg', nameOperator: 'Orange'),
        ],
      ),
    ));
    ;
  }
}
