import 'package:flutter/material.dart';

class descriptionTextWidget extends StatelessWidget {
  const descriptionTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 5, 10),
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      color: Colors.white,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
