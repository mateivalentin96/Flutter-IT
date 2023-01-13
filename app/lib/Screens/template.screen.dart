import 'package:app/CustomWidgets/Widgets_template/favoriteWidget.dart';
import 'package:app/CustomWidgets/Widgets_template/fourthWidgetSabloane.dart';
import 'package:app/CustomWidgets/Widgets_template/initialWidget.dart';
import 'package:app/CustomWidgets/Widgets_template/allTemplatesWidget.dart';
import 'package:flutter/material.dart';

class Template extends StatefulWidget {
  const Template({super.key});

  @override
  State<Template> createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
          child: Container(
        height: size.height,
        color: Color.fromARGB(255, 203, 203, 203),
        child: Column(
          children: [
            FavoriteWidget(),
            InitialWidget(),
            AllTemplatesWidget(),
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
      )),
    );
  }
}
