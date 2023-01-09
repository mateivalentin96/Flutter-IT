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
        title: const Text(
          'Cardurile tale',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
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
            MaterialButton(
              onPressed: () {
                if (ModalRoute.of(context)?.settings.name != "/firstCard")
                  Navigator.pushNamed(context, '/firstCard');
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Image.asset(
                          'images/creditCard.jpg',
                          width: 100,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: firstCard(),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Icon(
                          (Icons.arrow_forward_ios),
                          size: 14,
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class firstCard extends StatelessWidget {
  const firstCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'MATEI VALENTIN',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          '4389 **** **** 9193',
          style: TextStyle(fontSize: 12),
        ),
        Text(
          'Visa Contactless RON',
          style: TextStyle(fontSize: 10, color: Colors.grey),
        ),
        Text('Valabil pana la: iulie 2026',
            style: TextStyle(fontSize: 10, color: Colors.grey))
      ],
    );
  }
}
