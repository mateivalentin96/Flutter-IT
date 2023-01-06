import 'package:app/CustomWidgets/Widgets_plati/firstWidget.dart';
import 'package:app/CustomWidgets/Widgets_plati/lastWidget.dart';
import 'package:app/CustomWidgets/Widgets_plati/secondWidget.dart';
import 'package:app/CustomWidgets/Widgets_plati/thirdWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Plati extends StatefulWidget {
  const Plati({super.key});

  @override
  State<Plati> createState() => _PlatiState();
}

class _PlatiState extends State<Plati> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    late dynamic money = null;
    /* 
    
     money = request("/bankAccount")

     */
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
          LastWidget(
            size: size,
            name: 'Pachet Zero Tot',
            iban: 'RO98RZBR0000060032051996',
            ammount: '500.000,00',
            unit: 'Lei',
          ),
          LastWidget(
              size: size,
              name: 'Cont de Economii',
              iban: 'RO98RZBR0000060020359961',
              ammount: '25.000,00',
              unit: 'USD')
          /* Text(("${money != null ? money.toString() : ""} RON")) */
        ],
      ),
    );
  }
}
