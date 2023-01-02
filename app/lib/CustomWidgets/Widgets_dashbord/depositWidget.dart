import 'package:flutter/material.dart';

class DepositWidget extends StatelessWidget {
  const DepositWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      padding: EdgeInsets.all(0),
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        color: Color.fromARGB(255, 255, 255, 255),
        margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
        child: Row(
          children: [
            Image.asset(
              'images/logo.jpg',
              width: 50,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Depozite la termen in lei si valuta!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15, height: 2),
                  ),
                  Text(
                    'Iti poti deschide un depozit cu dobanda de pana la \n1.75% la EUR si pana la 2.75% la USD.',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 128, 128, 128)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
