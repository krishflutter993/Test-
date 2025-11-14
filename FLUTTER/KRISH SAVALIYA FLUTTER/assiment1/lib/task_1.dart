import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello Flutter App')),
      body: Center(
        child: Text('Welcome to Flutter!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
