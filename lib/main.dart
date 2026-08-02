import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:Text('Abdullah App'),backgroundColor: Colors.blue,
        ),
        body: Center(
          child:Container(color: Colors.red,height:100,width:100)


          // child: Text('Hello Abdullah'),
        ),

      )
    );
  }
}