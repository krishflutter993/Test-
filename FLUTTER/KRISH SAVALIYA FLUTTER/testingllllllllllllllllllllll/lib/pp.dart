import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SlideTextExample());
  }
}

class SlideTextExample extends StatefulWidget {
  @override
  _SlideTextExampleState createState() => _SlideTextExampleState();
}

class _SlideTextExampleState extends State<SlideTextExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    // Offset(-1, 0) means starting from left off-screen
    _animation = Tween<Offset>(
      begin: Offset(-1.5, 0), // left se bahar start
      end: Offset(0, 0), // center me aayega
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward(); // Start animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slide Text Animation")),
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: Text(
            'TAXE',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
