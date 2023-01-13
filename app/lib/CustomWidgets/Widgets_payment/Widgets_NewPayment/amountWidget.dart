import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class amountUnitWidget extends StatefulWidget {
  const amountUnitWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<amountUnitWidget> createState() => _amountUnitWidgetState();
}

class _amountUnitWidgetState extends State<amountUnitWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String amount = "";
    String selectedItem = "RON";
    List items = ["RON", "EUR", "USD"];
    String dropdownValue = 'RON';
    return Container(
      child: Column(
        children: [
          Container(
            child: Container(
              padding: EdgeInsets.fromLTRB(5, 0, 100, 0),
              color: Color.fromARGB(255, 233, 235, 234),
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 15),
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      "SUMA",
                      style: TextStyle(
                          fontSize: 12, color: Color.fromARGB(255, 85, 85, 85)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 15),
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      "MONEDA",
                      style: TextStyle(
                          fontSize: 12, color: Color.fromARGB(255, 85, 85, 85)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 1, 0),
                  color: Colors.white,
                  width: size.width / 2,
                  height: size.height / 10.5,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: TextField(
                      onChanged: (value) {
                        amount = value;
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '0,00',
                          hintStyle: TextStyle(fontSize: 17)),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: size.width / 2.25,
                  height: size.height / 10.5,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      items: <String>[
                        'RON',
                        'EUR',
                        'USD',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              value,
                              style:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
