import 'package:b11/widgets/customChatTile.dart';
import 'package:flutter/material.dart';

class WhatsappNew extends StatelessWidget {
  WhatsappNew({super.key});

  List chats = [
    {
      "name": "Abdullah",
      "message": "Hiii,,",
      "color": Colors.red,
      "time": "10:00 AM",
    },
    {
      "name": "Ahmed",
      "message": "Helllooo,,",
      "color": Colors.red,
      "time": "11:00 AM",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Whatsapp")),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return customChatTile(
            name: chats[index]["name"],
            message: chats[index]["message"],
            color: chats[index]["color"],
            time: chats[index]["time"],
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.red, // Your custom background color
              ),
              child: UserAccountsDrawerHeader(
                // currentAccountPicture: CircleAvatar(
                //   backgroundImage: NetworkImage(
                //     "https://cdn.pixabay.com/photo/2026/01/15/07/27/autumn-bend-10069119_1280.jpg",
                //   ),
                // ),
                accountName: Text("Muhammad Owais"),
                accountEmail: Text("codewithowais@gmail.com"),
              ),
            ),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
          ],
        ),
      ),
    );
  }
}
