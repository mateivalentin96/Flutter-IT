import 'package:flutter/cupertino.dart';

class desciptionWidget extends StatelessWidget {
  const desciptionWidget({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: Color.fromARGB(255, 233, 235, 234),
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      padding: EdgeInsets.fromLTRB(10, 12, 0, 12),
      child: Text(
        description,
        style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 85, 85, 85)),
      ),
    );
  }
}
