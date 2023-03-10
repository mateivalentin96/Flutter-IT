import 'package:flutter/material.dart';

class ExitWidget extends StatelessWidget {
  const ExitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
      child: MaterialButton(
        onPressed: () {
          if (ModalRoute.of(context)?.settings.name != "/")
            Navigator.pushNamed(context, '/');
        },
        padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
        color: Color.fromARGB(255, 254, 230, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'IESIRE',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.power_settings_new,
                    size: 35,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
