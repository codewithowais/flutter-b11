import 'package:b11/screens/screen1.dart';
import 'package:b11/screens/screen2.dart';
import 'package:b11/screens/screen3.dart';
import 'package:b11/screens/screen4.dart';
import 'package:flutter/material.dart';

class Newclass extends StatefulWidget {
  Newclass({super.key});

  @override
  State<Newclass> createState() => _NewclassState();
}

class _NewclassState extends State<Newclass> {
  var items = [Screen1(), Screen2(), Screen3(), Screen4()];

  int currentIndex = 0;

  changeScreen(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeScreen,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
