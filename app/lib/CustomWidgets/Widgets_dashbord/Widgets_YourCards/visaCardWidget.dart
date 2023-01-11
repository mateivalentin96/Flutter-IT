import 'package:app/CustomWidgets/Widgets_plati/secondWidget.dart';
import 'package:flutter/material.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 213, 213, 213),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Detalii card',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          color: Colors.grey,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Image.asset(
                  'images/creditCard.jpg',
                  width: 450,
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                alignment: Alignment.topLeft,
                width: size.width / 1,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'MATEI VALENTIN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '4389 **** **** 9193',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      alignment: Alignment.centerLeft,
                      child: Text('Visa Contactless RON',
                          style: TextStyle(color: Colors.grey)),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text('Valabil pana la: iulie 2026',
                          style: TextStyle(color: Colors.grey)),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '20359705',
                          style: TextStyle(color: Colors.grey),
                        )),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'RO98 BTRL 0002 2000 8956 0042',
                          style: TextStyle(color: Colors.grey),
                        )),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              margin: EdgeInsets.fromLTRB(0, 10, 10, 15),
                              child: Text(
                                'CARD DEBIT PRINCIPAL',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              )),
                          Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0))),
                              margin: EdgeInsets.fromLTRB(0, 10, 10, 15),
                              child: Text(
                                'ACTIV',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 10),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                color: Color.fromARGB(255, 233, 235, 234),
                padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text('OPTIUNI CARD'),
              ),
              OptionsCard(
                name: 'Afiseaza PIN',
              ),
              OptionsCard(name: 'Blocheaza card cu reemitere'),
              OptionsCard(name: 'Blocheaza card')
            ],
          ),
        ),
      ),
    );
  }
}

class OptionsCard extends StatelessWidget {
  OptionsCard({
    required this.name,
    Key? key,
  }) : super(key: key);
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(name), Icon(Icons.arrow_right_sharp)],
      ),
    );
  }
}
