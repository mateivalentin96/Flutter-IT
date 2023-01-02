import 'package:flutter/material.dart';

class LastNavigationDrawer extends StatelessWidget {
  const LastNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
      padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
      color: Color.fromARGB(255, 254, 230, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'IESIRE',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Row(
              children: [
                Icon(
                  Icons.power_settings_new,
                  size: 30,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
