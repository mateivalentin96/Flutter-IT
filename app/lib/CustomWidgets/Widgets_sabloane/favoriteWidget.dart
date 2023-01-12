import 'package:flutter/material.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  color: Colors.grey[200],
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(10, 13, 0, 13),
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              'Favorite',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ))
                      ])))
        ],
      ),
    );
  }
}
