import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Bunnies',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Study Bunnies'),
          ),
        body: Center(
            child: Text('START'),
        ),
      ),
    );
  }
}