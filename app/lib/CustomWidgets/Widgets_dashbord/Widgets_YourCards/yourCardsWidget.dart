import 'dart:ui';

import 'package:flutter/material.dart';

import '../../Widgets_plati/Widgets_PachetZeroTot/pachetZeroTotWidget.dart';
import '../../Widgets_plati/firstWidget.dart';
import '../../Widgets_plati/lastWidget.dart';
import '../../Widgets_plati/secondWidget.dart';

class YourCards extends StatelessWidget {
  const YourCards({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 213, 213, 213),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Cardurile tale'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 8, 20, 8),
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                children: [
                  Text(
                    'Pachet Zero Tot',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
                color: Color.fromARGB(255, 233, 235, 234),
                padding: EdgeInsets.fromLTRB(10, 5, 20, 5),
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  children: [
                    Text(
                      'CARD DE DEBIT',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 116, 117, 120)),
                    ),
                  ],
                )),
            Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 5, 20, 5),
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Row(
                  children: [
                    Container(child: Image.asset('/creditCard.jpg')),
                    Container(),
                    Container(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
