import 'dart:convert';
import 'dart:ui';

import 'package:app/services/share_preferences.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../services/users.services.dart';
import '../../models/UserModel.dart';

class WhiteWidget extends StatefulWidget {
  const WhiteWidget({
    Key? key,
    required this.size,
    required this.greyButtonText,
    required this.yellowButtonText,
    required this.blackTitle,
    required this.amount,
  }) : super(key: key);

  final Size size;
  final String greyButtonText;
  final String yellowButtonText;
  final String blackTitle;
  final String amount;

  @override
  State<WhiteWidget> createState() => _WhiteWidgetState();
}

User user = User(id: "1", name: "name", age: 21, location: "location");

class _WhiteWidgetState extends State<WhiteWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.fromLTRB(10, 7, 10, 0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.blackTitle),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert))
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(''),
                    Text(
                      widget.amount,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    minWidth: widget.size.width / 3 - 10,
                    elevation: 0,
                    height: 48,
                    onPressed: () {},
                    color: Color.fromARGB(255, 233, 235, 234),
                    child: Text(widget.greyButtonText),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: widget.size.width / 3 * 2 - 10,
                    elevation: 0,
                    height: 48,
                    color: Color.fromARGB(255, 254, 230, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.yellowButtonText),
                        Icon((Icons.arrow_forward_ios))
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
