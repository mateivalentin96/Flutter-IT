import 'package:flutter/material.dart';

class PachetZeroTot extends StatelessWidget {
  const PachetZeroTot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0, color: Colors.white),
        borderRadius: BorderRadius.circular(0),
      ),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              )),
          Container(
            child: Expanded(
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    filled: true,
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    hintText: 'IBAN/Nume beneficiar/Furnizor'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: IconButton(
              icon: Icon(Icons.person_outline),
              color: Colors.grey,
              onPressed: () {
                if (ModalRoute.of(context)?.settings.name != "/sabloane")
                  Navigator.pushNamed(context, '/sabloane');
              },
            ),
          ),
        ],
      ),
    );
  }
}
