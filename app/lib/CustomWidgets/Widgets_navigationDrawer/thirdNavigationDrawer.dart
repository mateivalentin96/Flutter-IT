import 'package:flutter/material.dart';

class GreyButtonNavDrawer extends StatelessWidget {
  const GreyButtonNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PreferencesOption(name: 'Administrare profil'),
          PreferencesOption(name: 'Administrare dispozitive'),
          Container(
            color: Color.fromARGB(255, 248, 248, 248),
            margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
            padding: EdgeInsets.fromLTRB(30, 17, 140, 17),
            child: Text(
              'Administrare widget',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 248, 248, 248),
            margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
            padding: EdgeInsets.fromLTRB(30, 17, 102, 17),
            child: Text(
              'Administrare SmartToken',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 248, 248, 248),
            margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
            padding: EdgeInsets.fromLTRB(30, 17, 125, 17),
            child: Text(
              'Administrare notificari',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 248, 248, 248),
            margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
            padding: EdgeInsets.fromLTRB(30, 17, 165, 17),
            child: Text(
              'Documente utile',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 248, 248, 248),
            margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
            padding: EdgeInsets.fromLTRB(30, 17, 155, 17),
            child: Text(
              'Trimite FeedBack',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}

class PreferencesOption extends StatelessWidget {
  const PreferencesOption({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
      padding: EdgeInsets.fromLTRB(30, 17, 15, 17),
      child: Text(
        name,
        softWrap: true,
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
