import 'package:flutter/material.dart';

class FirstWidgetmaiMulte extends StatelessWidget {
  const FirstWidgetmaiMulte(
      {required this.nameWidget,
      required this.colorWidget,
      required this.iconWidget,
      super.key});

  final Icon iconWidget;
  final String nameWidget;
  final Color colorWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWidget,
      height: 175,
      width: 137,
      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Column(
        children: [
          Container(child: iconWidget),
          Container(
            child: Text(nameWidget),
          )
        ],
      ),
    );
  }
}