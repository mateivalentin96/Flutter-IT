import 'package:flutter/material.dart';

class ScanWidget extends StatelessWidget {
  const ScanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
            elevation: 0,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            onPressed: () {},
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                color: Color.fromARGB(255, 233, 235, 234),
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(Icons.qr_code_scanner_outlined),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 7, 10, 7),
                      child: Text(
                        'Scaneaza factura furnizor',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 85, 85, 85)),
                      ))
                ])))
      ],
    );
  }
}
