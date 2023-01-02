import 'package:flutter/material.dart';

class SecondNavigationDrawer extends StatelessWidget {
  const SecondNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 248, 248, 248),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      padding: EdgeInsets.fromLTRB(30, 20, 150, 0),
      child: Container(
        child: Text(
          'Preferinte',
          style: TextStyle(
              fontSize: 27, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
    );
  }
}
