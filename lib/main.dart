// import 'package:b11/screens/abc.dart';
// import 'package:b11/screens/whatsapp.dart';
import 'package:b11/screens/whatsapp_new.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WhatsappNew(),
    );
  }
}