import 'package:app/CustomWidgets/Widgets_messagesAndGifts/firstWidgetMessages.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Mesaje'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FirstWidgetMessages(),
          ],
        ),
      ),
    );
  }
}
