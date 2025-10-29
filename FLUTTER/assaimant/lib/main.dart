import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: HelloWorldScreen(), debugShowCheckedModeBanner: false),
  );
}

class HelloWorldScreen extends StatelessWidget {
  const HelloWorldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: const Center(
        child: Text(
          'Hello, World!\nMy name is Krish Savaliya',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
