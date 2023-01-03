import 'package:app/CustomWidgets/Widgets_dashbord/navigationDrawer.dart';
import 'package:app/Screens/messages.screen.dart';
import 'package:app/services/share_preferences.service.dart';
import 'package:app/services/users.services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesLayout extends StatelessWidget {
  const MessagesLayout({
    super.key,
    required this.screen,
  });
  final Widget screen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: NavigationDrawer(),
        ),
      ),
      body: screen,
      bottomNavigationBar: NavigationBar(
        height: 65,
        destinations: [
          Column(
            children: [
              IconButton(
                onPressed: () => {
                  if (ModalRoute.of(context)?.settings.name != "/")
                    Navigator.pushNamed(context, '/'),
                },
                icon: Icon(Icons.account_balance_outlined),
                color: Colors.grey,
              ),
              Text('Dashbord', style: TextStyle(color: Colors.grey))
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () => {
                  if (ModalRoute.of(context)?.settings.name != "/plati")
                    Navigator.pushNamed(context, '/plati'),
                },
                icon: Icon(Icons.payment_outlined),
                color: Colors.grey,
              ),
              Text('Plati', style: TextStyle(color: Colors.grey))
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  if (ModalRoute.of(context)?.settings.name != "/sabloane")
                    Navigator.pushNamed(context, '/sabloane');
                },
                icon: Icon(Icons.people_outline),
                color: Colors.grey,
              ),
              Text(
                'Sabloane',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  if (ModalRoute.of(context)?.settings.name != "/reincarcare")
                    Navigator.pushNamed(context, '/reincarcare');
                },
                icon: Icon(Icons.sim_card_outlined),
                color: Colors.grey,
              ),
              Text('Reincarcare', style: TextStyle(color: Colors.grey))
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  if (ModalRoute.of(context)?.settings.name != "/maiMulte")
                    Navigator.pushNamed(context, '/maiMulte');
                },
                icon: Icon(Icons.more_horiz_outlined),
                color: Colors.grey,
              ),
              Text('Mai multe', style: TextStyle(color: Colors.grey))
            ],
          ),
        ],
      ),
    );
  }
}
