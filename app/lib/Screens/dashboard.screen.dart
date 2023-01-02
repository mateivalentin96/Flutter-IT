import 'package:app/CustomWidgets/Widgets_dashbord/cardsAndSavingWidget.dart';
import 'package:app/CustomWidgets/Widgets_dashbord/depositWidget.dart';
import 'package:app/CustomWidgets/Widgets_dashbord/footerWidget.dart';
import 'package:flutter/cupertino.dart';
import '../CustomWidgets/Widgets_dashbord/whiteWidget.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        color: Color.fromARGB(255, 203, 203, 203),
        child: Column(
          children: [
            WhiteWidget(
              size: size,
              greyButtonText: "Istoric \ntranzactii",
              yellowButtonText: "Plata noua",
              blackTitle: "Pachet Zero Tot",
              amount: '500.000,00 Lei',
            ),
            WhiteWidget(
              size: size,
              greyButtonText: "Istoric \ntranzactii",
              yellowButtonText: "Alimenteaza",
              blackTitle: "Cont economii RON",
              amount: '55.000,00 Lei',
            ),
            WhiteWidget(
              size: size,
              greyButtonText: 'Istoric \ntranzactii',
              yellowButtonText: "Alimenteaza",
              blackTitle: "Cont economii EURO",
              amount: '60.000,00 €',
            ),
            WhiteWidget(
              size: size,
              greyButtonText: "Extras de cont",
              yellowButtonText: "Lichideaza",
              blackTitle: "Depozit la termen 12 luni Lei",
              amount: " 70.000,00 \$ ",
            ),
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
