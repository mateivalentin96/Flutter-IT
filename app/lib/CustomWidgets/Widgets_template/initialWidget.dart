import 'package:flutter/material.dart';

class InitialWidget extends StatelessWidget {
  const InitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(10, 1, 10, 0),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white)),
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Container(
                  child: Text(
                    ' S ',
                    style: TextStyle(
                        fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                )),
          )
        ]));
  }
}
