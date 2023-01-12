import 'package:flutter/material.dart';

class AdministrationWidget extends StatelessWidget {
  const AdministrationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: const [
          PreferencesOption(name: 'Administrare profil'),
          PreferencesOption(name: 'Administrare dispozitive'),
          PreferencesOption(name: 'Administrare widget'),
          PreferencesOption(name: 'Administrare SmartToken'),
          PreferencesOption(name: 'Administrare notificari'),
          PreferencesOption(name: 'Documente utile'),
          PreferencesOption(name: 'Trimite FeedBack'),
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
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
      child: MaterialButton(
        onPressed: () {},
        padding: EdgeInsets.fromLTRB(40, 17, 50, 17),
        child: Text(
          name,
          softWrap: true,
          style: TextStyle(
            fontSize: 15,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
