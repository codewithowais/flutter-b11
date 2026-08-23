import 'package:b11/screens/status_view.dart';
import 'package:b11/widgets/customChatTile.dart';
import 'package:flutter/material.dart';

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          customChatTile(
            name: "Abdullah",
            message: "Hellooo...",
            color: Colors.red,
            time: "12:18",
          ),
          SizedBox(height: 10),
          customChatTile(
            name: "Owais",
            message: "Hii...",
            color: Colors.blue,
            time: "01:18",
          ),
          SizedBox(height: 10),
          customChatTile(
            name: "Ahmed",
            message: "jee...",
            color: Colors.green,
            time: "02:18",
          ),
          SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const StatusView(),
                ),
              );
            },
            child: Text("Go To Status View "),
          ),

          Image.asset("assets/images/user-avatar.png"),
        ],
      ),
    );
  }
}
