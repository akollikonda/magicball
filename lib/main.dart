import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text('Magic 8 Ball'),
          ),
          body: MyApp(),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int initialBall = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: TextButton(
        onPressed: () {
          setState(() {
            initialBall = 1 + Random().nextInt(5);
          });
        },
        child: Container(
          color: Colors.blue[600],
          child: Center(child: Image.asset('images/ball$initialBall.png')),
        ),
      ),
    );
  }
}
