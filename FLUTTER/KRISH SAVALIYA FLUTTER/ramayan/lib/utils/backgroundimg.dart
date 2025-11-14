import 'package:flutter/material.dart';

class img extends StatefulWidget {
  const img({super.key});

  @override
  State<img> createState() => _imgState();
}

class _imgState extends State<img> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/k.png'), // your image
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
