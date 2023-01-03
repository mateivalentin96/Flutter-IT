import 'package:app/CustomWidgets/Widgets_dashbord/navigationDrawer.dart';
import 'package:app/Screens/messages.screen.dart';
import 'package:app/services/share_preferences.service.dart';
import 'package:app/services/users.services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({
    super.key,
    required this.screen,
  });
  final Widget screen;

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

String activeButton = "ceva";

class _MainLayoutState extends State<MainLayout> {
  @override
  void updateButtonColor(String buttonName) {
    setState(() {
      activeButton = buttonName;
    });
  }

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
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return MaterialButton(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo_myPicture.jpg'),
                  ),
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/logo_Raiffaisen.jpg',
                    width: 30,
                  ),
                  Text('Raiffaisen\n Bank'),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              // await deleteTokenFromStorage();
              //await readTokenFromStorage();
              getUsers();
            },
            icon: Icon(CupertinoIcons.gift),
            color: Color.fromARGB(255, 0, 0, 0),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {
              if (ModalRoute.of(context)?.settings.name != "/messages")
                Navigator.pushNamed(context, '/messages');
            },
            icon: Icon(CupertinoIcons.mail),
            color: Colors.black,
            iconSize: 30,
          )
        ],
      ),
      body: widget.screen,
      bottomNavigationBar: NavigationBar(
        height: 65,
        destinations: [
          Column(
            children: [
              IconButton(
                onPressed: () {
                  updateButtonColor("dashboard");
                  if (ModalRoute.of(context)?.settings.name != "/dashboard")
                    Navigator.pushNamed(context, '/dashboard');
                },
                icon: Icon(Icons.account_balance_outlined),
                color: activeButton == "dashboard" ? Colors.black : Colors.grey,
              ),
              Text('Dashbord',
                  style: TextStyle(
                    color: activeButton == "dashboard"
                        ? Colors.black
                        : Colors.grey,
                  ))
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  updateButtonColor("plati");
                  if (ModalRoute.of(context)?.settings.name != "/plati")
                    Navigator.pushNamed(context, '/plati');
                },
                icon: Icon(Icons.payment_outlined),
                color: activeButton == "plati" ? Colors.black : Colors.grey,
              ),
              Text("Plati",
                  style: TextStyle(
                    color: activeButton == "plati" ? Colors.black : Colors.grey,
                  ))
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  updateButtonColor("sabloane");
                  if (ModalRoute.of(context)?.settings.name != "/sabloane")
                    Navigator.pushNamed(context, '/sabloane');
                },
                icon: Icon(Icons.people_outline),
                color: activeButton == "sabloane" ? Colors.black : Colors.grey,
              ),
              Text(
                "Sabloane",
                style: TextStyle(
                  color:
                      activeButton == "sabloane" ? Colors.black : Colors.grey,
                ),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  updateButtonColor("reincarcare");
                  if (ModalRoute.of(context)?.settings.name != "/reincarcare")
                    Navigator.pushNamed(context, '/reincarcare');
                },
                icon: Icon(Icons.sim_card_outlined),
                color:
                    activeButton == "reincarcare" ? Colors.black : Colors.grey,
              ),
              Text('Reincarcare',
                  style: TextStyle(
                    color: activeButton == "reincarcare"
                        ? Colors.black
                        : Colors.grey,
                  ))
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  updateButtonColor("maiMulte");
                  if (ModalRoute.of(context)?.settings.name != "/maiMulte")
                    Navigator.pushNamed(context, '/maiMulte');
                },
                icon: Icon(Icons.more_horiz_outlined),
                color: activeButton == "maiMulte" ? Colors.black : Colors.grey,
              ),
              Text('Mai multe',
                  style: TextStyle(
                    color:
                        activeButton == "maiMulte" ? Colors.black : Colors.grey,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
