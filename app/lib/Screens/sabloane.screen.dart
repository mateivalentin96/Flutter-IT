import 'package:app/CustomWidgets/Widgets_sabloane/firstWidgetSabloane.dart';
import 'package:app/CustomWidgets/Widgets_sabloane/fourthWidgetSabloane.dart';
import 'package:app/CustomWidgets/Widgets_sabloane/secondWidgetSabloane.dart';
import 'package:app/CustomWidgets/Widgets_sabloane/thirdWidgetSabloane.dart';
import 'package:flutter/material.dart';

class Sabloane extends StatelessWidget {
  const Sabloane({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Container(
      height: size.height,
      color: Color.fromARGB(255, 203, 203, 203),
      child: Column(
        children: [
          FirstWidgetSabloane(),
          SecondWidgetSabloane(),
          ThirdWidgetSabloane(),
          FourthWidgetSabloane(
            name: 'Calu',
            id: ' E ',
            iBan: 'RO0012BTRL1235500002321',
          ),
          FourthWidgetSabloane(
            iBan: 'RO0012BTRL1235500002321',
            name: 'Sorin',
            id: ' S ',
          ),
          FourthWidgetSabloane(
            iBan: 'RO2245RZBR9976000033222',
            name: 'ENEL',
            id: ' E ',
          ),
          FourthWidgetSabloane(
            iBan: 'RO2245RZBR9976000033222',
            name: 'GAZE',
            id: ' G ',
          ),
          FourthWidgetSabloane(
            iBan: 'RO2245RZBR9976000033222',
            name: 'TESLA',
            id: ' T ',
          ),
          FourthWidgetSabloane(
            iBan: 'RO2245RZBR9976000033222',
            name: 'GOOGLE',
            id: ' G ',
          ),
          FourthWidgetSabloane(
            iBan: 'RO2245RZBR9976000033222',
            name: 'EVOWARE',
            id: ' E ',
          ),
          FourthWidgetSabloane(
            iBan: 'RO2245RZBR9976000033222',
            name: 'GIGEL FRONE',
            id: ' G ',
          ),
        ],
      ),
    ));
  }
}
