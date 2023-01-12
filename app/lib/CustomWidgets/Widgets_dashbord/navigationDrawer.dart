import 'package:app/CustomWidgets/Widgets_navigationDrawer/welcomeWidget.dart';
import 'package:app/CustomWidgets/Widgets_navigationDrawer/exitWidget.dart';
import 'package:app/CustomWidgets/Widgets_navigationDrawer/preferencesWidget.dart';
import 'package:app/CustomWidgets/Widgets_navigationDrawer/administrationWidget.dart';
import 'package:app/models/UserModelTest.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({super.key});

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 213, 213, 213),
        child: Column(
          children: [
            WelcomeWidget(),
            PreferencesWidget(),
            AdministrationWidget(),
            ExitWidget()
          ],
        ));
  }
}
