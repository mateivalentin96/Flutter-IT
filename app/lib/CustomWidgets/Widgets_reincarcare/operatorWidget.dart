import 'package:flutter/material.dart';

class OperatorWidget extends StatelessWidget {
  const OperatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  color: Color.fromARGB(255, 233, 235, 234),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(10, 15, 0, 10),
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              'OPERATOR',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 85, 85, 85)),
                            ))
                      ])))
        ],
      ),
    );
  }
}
