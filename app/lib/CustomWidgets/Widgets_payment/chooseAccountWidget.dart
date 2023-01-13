import 'package:flutter/material.dart';

class ChooseAccountWidget extends StatelessWidget {
  const ChooseAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.fromLTRB(18, 18, 10, 18),
        color: Colors.white,
        child: Row(
          children: [
            Text('Alege contul',
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 147, 147, 147)))
          ],
        ),
      ),
      decoration: BoxDecoration(
          border: Border.all(
        width: 1,
      )),
      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
    );
  }
}
