import 'package:flutter/material.dart';

class SecondWidgetReincarcare extends StatelessWidget {
  const SecondWidgetReincarcare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pachet Zero Tot',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    '50.000,00',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'RO98RZBR0000060032051996',
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  Text(
                    'Lei',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
