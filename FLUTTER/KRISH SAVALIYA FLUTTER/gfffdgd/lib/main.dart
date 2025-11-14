import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: GameScreen(),));
}


class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final TextEditingController _controller = TextEditingController();
  int _secretNumber = Random().nextInt(100) + 1;
  int _attempts = 0;
  final int _maxAttempts = 5;
  String _message = 'Guess a number between 1 and 10';
  bool _gameOver = false;

  void _checkGuess() {
    if (_gameOver) return;

    final int? guess = int.tryParse(_controller.text);
    if (guess == null) {
      setState(() {
        _message = 'Please enter a valid number';
      });
      return;
    }

    setState(() {
      _attempts++;
      if (guess < _secretNumber) {
        _message = 'Too low! Try again.';
      } else if (guess > _secretNumber) {
        _message = 'Too high! Try again.';
      } else {
        _message =
            '🎉 Congratulations! You guessed it right in $_attempts tries!';
        _gameOver = true;
      }

      if (!_gameOver && _attempts >= _maxAttempts) {
        _message = '😢 Game Over! The number was $_secretNumber.';
        _gameOver = true;
      }

      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Number Guessing Game')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(_message, style: TextStyle(fontSize: 20)),
            if (!_gameOver) ...[
              TextField(
                controller: _controller,
                decoration: InputDecoration(hintText: 'Enter your guess'),
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: _checkGuess, child: Text('Submit')),
              Text('Attempts: $_attempts / $_maxAttempts'),
            ] else ...[
              SizedBox(height:10),
            ],
          ],
        ),
      ),
    );
  }
}
