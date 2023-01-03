import 'package:flutter/material.dart';

class FirstWidgetMessages extends StatelessWidget {
  const FirstWidgetMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(0, 1, 0, 1),
      padding: EdgeInsets.fromLTRB(50, 0, 5, 0),
      child: MaterialButton(
        onPressed: () {},
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
                  child: Text('Decembrie 2022', style: TextStyle(fontSize: 13)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text('Informare modificare document de Termeni..',
                      style: TextStyle(fontSize: 13)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Text(
                      'Au fost actualizati Termenii si Conditiile\nprivind furnizarea serviciilor Smart Mobile s..',
                      style: TextStyle(fontSize: 13)),
                ),
              ],
            ),
            Column(
              children: [Icon(Icons.arrow_right)],
            )
          ],
        ),
      ),
    );
  }
}
