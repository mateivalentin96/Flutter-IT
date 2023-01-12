import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({
    super.key,
    required this.size,
    required this.name,
    required this.iban,
    required this.ammount,
    required this.unit,
    required this.pressAction,
  });

  final Size size;
  final String name;
  final String iban;
  final String ammount;
  final String unit;
  final Function pressAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(10, 1, 10, 0),
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: MaterialButton(
        onPressed: () {
          pressAction(
              {"id": iban, "amount": ammount.toString(), "currency": unit});
          if (ModalRoute.of(context)?.settings.name != "/newPayment")
            Navigator.pushNamed(context, '/newPayment');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
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
    );
  }
}
