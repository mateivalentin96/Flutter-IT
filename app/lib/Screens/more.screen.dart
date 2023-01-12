import 'package:app/CustomWidgets/Widgets_more/moreWidget.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        color: Color.fromARGB(255, 203, 203, 203),
        child: Container(
            child: Column(
          children: [
            Row(
              children: [
                MoreWidget(
                  nameWidget: 'Blochează card',
                  iconWidget: Icon(
                    Icons.credit_card_off_outlined,
                    size: 40,
                  ),
                  colorWidget: Color.fromARGB(255, 248, 248, 248),
                ),
                MoreWidget(
                  nameWidget: 'Quick Payment',
                  iconWidget: Icon(
                    Icons.paypal_outlined,
                    size: 40,
                  ),
                  colorWidget: Colors.white,
                ),
                MoreWidget(
                  nameWidget: 'Plăți viitoare',
                  iconWidget: Icon(
                    Icons.history,
                    size: 40,
                  ),
                  colorWidget: Color.fromARGB(255, 248, 248, 248),
                ),
              ],
            ),
            Row(
              children: [
                MoreWidget(
                  nameWidget: 'Contracte Debit',
                  iconWidget: Icon(
                    Icons.source_outlined,
                    size: 40,
                  ),
                  colorWidget: Colors.white,
                ),
                MoreWidget(
                  nameWidget: 'Operațiuni Depozite',
                  iconWidget: Icon(
                    Icons.account_balance_outlined,
                    size: 40,
                  ),
                  colorWidget: Color.fromARGB(255, 248, 248, 248),
                ),
                MoreWidget(
                  nameWidget: 'SavingBox',
                  iconWidget: Icon(
                    Icons.savings_outlined,
                    size: 40,
                  ),
                  colorWidget: Colors.white,
                ),
              ],
            ),
            Row(
              children: [
                MoreWidget(
                  nameWidget: 'Planificare\nfinanciară',
                  iconWidget: Icon(
                    Icons.local_atm_outlined,
                    size: 40,
                  ),
                  colorWidget: Color.fromARGB(255, 248, 248, 248),
                ),
                MoreWidget(
                  nameWidget: 'Asigurări',
                  iconWidget: Icon(
                    Icons.beach_access_outlined,
                    size: 40,
                  ),
                  colorWidget: Colors.white,
                ),
                MoreWidget(
                  nameWidget: 'Dobânzi',
                  iconWidget: Icon(
                    Icons.percent_outlined,
                    size: 40,
                  ),
                  colorWidget: Color.fromARGB(255, 248, 248, 248),
                ),
              ],
            ),
            Row(
              children: [
                MoreWidget(
                  nameWidget: 'Curs valutar',
                  iconWidget: Icon(
                    Icons.euro_outlined,
                    size: 40,
                  ),
                  colorWidget: Colors.white,
                ),
                MoreWidget(
                  nameWidget: 'Locator',
                  iconWidget: Icon(
                    Icons.room_outlined,
                    size: 40,
                  ),
                  colorWidget: Color.fromARGB(255, 248, 248, 248),
                ),
                MoreWidget(
                  nameWidget: 'Contact',
                  iconWidget: Icon(
                    Icons.call,
                    size: 40,
                  ),
                  colorWidget: Colors.white,
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
