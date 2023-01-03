import 'package:flutter/material.dart';

class LastWidgetReincarcare extends StatelessWidget {
  const LastWidgetReincarcare(
      {required this.logo, required this.nameOperator, super.key});

  final String logo;
  final String nameOperator;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(10, 1, 10, 0),
      child: MaterialButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 10, 5),
              margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
              child: Column(
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      child: Image.asset(
                        logo,
                        width: 40,
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                                child: Text(
                                  nameOperator,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  'Reincarcare cartela',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
