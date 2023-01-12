import 'package:flutter/material.dart';

class MoreWidget extends StatelessWidget {
  const MoreWidget(
      {required this.nameWidget,
      required this.colorWidget,
      required this.iconWidget,
      super.key});

  final Icon iconWidget;
  final String nameWidget;
  final Color colorWidget;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: colorWidget,
      height: size.height / 5.1,
      width: size.width / 3,
      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: MaterialButton(
        onPressed: () {},
        child: Column(
          children: [
            iconWidget,
            Text(
              nameWidget,
              style: TextStyle(fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
