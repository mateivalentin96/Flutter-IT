import 'package:flutter/material.dart';

class CardsAndSavingWidget extends StatelessWidget {
  const CardsAndSavingWidget({
    super.key,
    required this.cardsAndSavingText,
    required this.imageWidget,
  });

  final String cardsAndSavingText;
  final String imageWidget;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 0,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        onPressed: () {},
        child: Container(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
            color: Color.fromARGB(255, 255, 255, 255),
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(children: [
              Image.asset(
                imageWidget,
                width: 30,
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 40, 0),
                  child: Text(
                    cardsAndSavingText,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ])));
  }
}
