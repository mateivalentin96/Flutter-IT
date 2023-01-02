import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourthWidgetSabloane extends StatelessWidget {
  const FourthWidgetSabloane(
      {required this.iBan, required this.id, required this.name, super.key});

  final String iBan;
  final String name;
  final String id;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(10, 1, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
            child: Column(
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white)),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            id,
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      ],
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
                                name,
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w600),
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
                                iBan,
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(78, 0, 0, 0),
                    child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.payment)),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.star_outline)),
                      ],
                    ),
                  )
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
