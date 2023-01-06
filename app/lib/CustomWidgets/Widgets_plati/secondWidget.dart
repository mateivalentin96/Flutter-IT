import 'package:flutter/material.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({required this.account, super.key});
  final String account;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              padding: account == "IN CONTUL"
                  ? EdgeInsets.fromLTRB(10, 0, 10, 0)
                  : EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  color: Color.fromARGB(255, 233, 235, 234),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 15),
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              account,
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
