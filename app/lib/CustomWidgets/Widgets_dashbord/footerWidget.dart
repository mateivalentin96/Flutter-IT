import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 0,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        onPressed: () {},
        child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            color: Color.fromARGB(255, 255, 255, 255),
            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(CupertinoIcons.plus),
              Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 40, 0),
                  child: Text(
                    'Deschide cont sau produs nou',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ])));
  }
}
