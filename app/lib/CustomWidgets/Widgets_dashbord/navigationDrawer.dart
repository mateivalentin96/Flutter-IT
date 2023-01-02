import 'package:app/CustomWidgets/Widgets_navigationDrawer/firstNavigationDrawer.dart';
import 'package:app/CustomWidgets/Widgets_navigationDrawer/lastNavigationDrawer.dart';
import 'package:app/CustomWidgets/Widgets_navigationDrawer/secondNavigationDrawer.dart';
import 'package:app/CustomWidgets/Widgets_navigationDrawer/thirdNavigationDrawer.dart';
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
            FirstNavigationDrawer(),
            SecondNavigationDrawer(),
            GreyButtonNavDrawer(),
            LastNavigationDrawer()
          ],
        ));
  }
}
