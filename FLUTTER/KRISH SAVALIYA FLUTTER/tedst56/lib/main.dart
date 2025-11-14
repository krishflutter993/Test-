import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Splashscreen(), debugShowCheckedModeBanner: false));
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  final player = AudioPlayer();

  // This function will play sound based on selected bird
  Future<void> playBirdSound(Bards bird) async {
    String fileName = "";

    switch (bird) {
      case Bards.PEACOCK:
        fileName = "assets/peacock.mp3";
        break;
      case Bards.PARROT:
        fileName = "parrot.mp3";
        break;
      case Bards.SPARROW:
        fileName = "sparrow.mp3";
        break;
      case Bards.EAGLE:
        fileName = "eagle.mp3";
        break;
    }
    await player.play(AssetSource('$fileName'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animal voice")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                final Bards? selectedBird = await _asyncSimpleDialog(context);
                if (selectedBird != null) {
                  print("Selected Bird is $selectedBird");
                  await playBirdSound(selectedBird);
                }
              },
              child: const Text("Bards", style: TextStyle(fontSize: 20.0)),
            ),
          ],
        ),
      ),
    );
  }
}

enum Bards { PEACOCK, PARROT, SPARROW, EAGLE }

_asyncSimpleDialog(BuildContext context) async {
  return await showDialog<Bards>(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        title: const Text('Select Bards'),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, Bards.PEACOCK);
            },
            child: const Text('PEACOCK'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, Bards.PARROT);
            },
            child: const Text('PARROT'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, Bards.SPARROW);
            },
            child: const Text('SPARROW'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, Bards.EAGLE);
            },
            child: const Text('EAGLE'),
          ),
        ],
      );
    },
  );
}
