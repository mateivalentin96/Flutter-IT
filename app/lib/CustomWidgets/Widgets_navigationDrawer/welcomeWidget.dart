import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 52, 0, 0),
      padding: EdgeInsets.fromLTRB(0, 23, 0, 23),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bine ai venit,\nVALENTIN MATEI',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Row(
              children: [
                Image.asset(
                  'images/logo_myPicture.jpg',
                  width: 50,
                  height: 50,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
