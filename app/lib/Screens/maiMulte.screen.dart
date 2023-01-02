import 'package:app/CustomWidgets/Widgets_maiMulte/firstWidgetmaiMulte.dart';
import 'package:flutter/material.dart';

class MaiMulte extends StatefulWidget {
  const MaiMulte({super.key});

  @override
  State<MaiMulte> createState() => _MaiMulteState();
}

class _MaiMulteState extends State<MaiMulte> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 203, 203, 203),
      child: Container(
          child: Column(
        children: [
          Row(
            children: [
              FirstWidgetmaiMulte(
                nameWidget: 'Blochează card',
                iconWidget: Icon(
                  Icons.credit_card_off_outlined,
                  size: 50,
                ),
                colorWidget: Color.fromARGB(255, 248, 248, 248),
              ),
              FirstWidgetmaiMulte(
                nameWidget: 'Quick Payment',
                iconWidget: Icon(
                  Icons.paypal_outlined,
                  size: 50,
                ),
                colorWidget: Colors.white,
              ),
              FirstWidgetmaiMulte(
                nameWidget: 'Plăți viitoare',
                iconWidget: Icon(
                  Icons.history,
                  size: 50,
                ),
                colorWidget: Color.fromARGB(255, 248, 248, 248),
              ),
            ],
          ),
          Row(
            children: [
              FirstWidgetmaiMulte(
                nameWidget: 'Contracte Debit',
                iconWidget: Icon(
                  Icons.source_outlined,
                  size: 50,
                ),
                colorWidget: Colors.white,
              ),
              FirstWidgetmaiMulte(
                nameWidget: 'Operațiuni Depozite',
                iconWidget: Icon(
                  Icons.account_balance_outlined,
                  size: 50,
                ),
                colorWidget: Color.fromARGB(255, 248, 248, 248),
              ),
              FirstWidgetmaiMulte(
                nameWidget: 'SavingBox',
                iconWidget: Icon(
                  Icons.savings_outlined,
                  size: 50,
                ),
                colorWidget: Colors.white,
              ),
            ],
          ),
          Row(
            children: [
              FirstWidgetmaiMulte(
                nameWidget: 'Planificare\nfinanciară',
                iconWidget: Icon(
                  Icons.local_atm_outlined,
                  size: 50,
                ),
                colorWidget: Color.fromARGB(255, 248, 248, 248),
              ),
              FirstWidgetmaiMulte(
                nameWidget: 'Asigurări',
                iconWidget: Icon(
                  Icons.beach_access_outlined,
                  size: 50,
                ),
                colorWidget: Colors.white,
              ),
              FirstWidgetmaiMulte(
                nameWidget: 'Dobânzi',
                iconWidget: Icon(
                  Icons.percent_outlined,
                  size: 50,
                ),
                colorWidget: Color.fromARGB(255, 248, 248, 248),
              ),
            ],
          ),
          Row(
            children: [
              FirstWidgetmaiMulte(
                nameWidget: 'Curs valutar',
                iconWidget: Icon(
                  Icons.euro_outlined,
                  size: 50,
                ),
                colorWidget: Colors.white,
              ),
              FirstWidgetmaiMulte(
                nameWidget: 'Locator',
                iconWidget: Icon(
                  Icons.room_outlined,
                  size: 50,
                ),
                colorWidget: Color.fromARGB(255, 248, 248, 248),
              ),
              FirstWidgetmaiMulte(
                nameWidget: 'Contact',
                iconWidget: Icon(
                  Icons.call,
                  size: 50,
                ),
                colorWidget: Colors.white,
              ),
            ],
          )
        ],
      )),
    );
  }
}
