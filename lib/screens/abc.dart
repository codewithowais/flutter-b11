import 'package:flutter/material.dart';

class WhatsappNew extends StatelessWidget {
  WhatsappNew({super.key});

  List chats = [
    {
      "name": "codewithowais",
      "message": "hiii",
      "time": "10: 00 AM"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(chats[index]['name']),
          );
        },
      ),
    );
  }
}