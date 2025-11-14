import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ramayan App",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomeScreen(),
    ),
  );
}
