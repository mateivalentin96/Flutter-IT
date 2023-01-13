import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sendWidget extends StatelessWidget {
  const sendWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: Size(0, 0)),
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        alignment: Alignment.centerLeft,
        color: Colors.yellow,
        child: Text(
          'Transfera',
          style: TextStyle(color: Colors.black),
        ),
      ),
      onPressed: () {},
    );
  }
}
