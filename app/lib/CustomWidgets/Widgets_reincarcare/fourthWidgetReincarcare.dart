import 'package:flutter/material.dart';

class FourthWidgetReincarcare extends StatelessWidget {
  const FourthWidgetReincarcare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 16, 10, 16),
        color: Colors.white,
        child: Row(
          children: [
            Text('Alege operatorul',
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 147, 147, 147)))
          ],
        ),
      ),
      decoration: BoxDecoration(
          border: Border.all(
        width: 1,
      )),
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
    );
  }
}
