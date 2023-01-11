import 'package:app/CustomWidgets/Widgets_dashbord/cardsAndSavingWidget.dart';
import 'package:app/CustomWidgets/Widgets_dashbord/depositWidget.dart';
import 'package:app/CustomWidgets/Widgets_dashbord/footerWidget.dart';
import 'package:app/services/users.services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CustomWidgets/Widgets_dashbord/bankAccountWidget.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({
    Key? key,
  }) : super(key: key);
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  dynamic user;

  void getMeLocal() async {
    user = await getMe();
    setState(() {
      user;
    });
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    getMeLocal();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var bankAccountWidgetList = [
      if (user != null)
        ...user['bank_account'].map((ba) => BankAccountWidget(
              amount: '${ba["amount"].toString()} ${ba["currency"]}',
              blackTitle: "Cont economii ${ba["currency"]}",
              greyButtonText: "Istoric\nTranzactii",
              size: size,
              yellowButtonText: "Alimenteaza",
            ))
    ];

    return SingleChildScrollView(
      child: Container(
        color: Color.fromARGB(255, 203, 203, 203),
        child: Column(
          children: [
            bankAccountWidgetList.length == 0
                ? LinearProgressIndicator()
                : Text(""),
            ...bankAccountWidgetList,
            DepositWidget(),
            CardsAndSavingWidget(
                cardsAndSavingText: 'Cardurile tale',
                imageWidget: 'images/logo2.jpg'),
            CardsAndSavingWidget(
              cardsAndSavingText: 'SavingBox',
              imageWidget: 'images/logo3.jpg',
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
