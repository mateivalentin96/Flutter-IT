import 'package:flutter/material.dart';

class LastWidget extends StatelessWidget {
  const LastWidget({
    super.key,
    required this.size,
    required this.name,
    required this.iban,
    required this.ammount,
    required this.unit,
  });

  final Size size;
  final String name;
  final String iban;
  final String ammount;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 65,
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
        padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    ammount,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    iban,
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  Text(
                    unit,
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
