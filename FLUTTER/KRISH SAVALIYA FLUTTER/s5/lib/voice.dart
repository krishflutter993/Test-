import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:s5/main.dart';

class Voice extends StatefulWidget {
  const Voice({super.key});

  @override
  State<Voice> createState() => _VoiceState();
}

List AnimalName = [
  "Lion",
  "Tiger",
  "Elephant",
  "Peacock",
  "Parrot",
  "Dog",
  "Cat",
  "Horse",
  "Crow",
  "Eagle",
  "cow",
  "Monkey",
];

List AnimalImage = [
  "assets/lion.png",
  "assets/tiger.png",
  "assets/e.png",
  "assets/p.png",
  "assets/parr.png",
  "assets/dog.png",
  "assets/cat.png",
  "assets/horse.png",
  "assets/crow.png",
  "assets/eagle.png",
  "assets/cow.png",
  "assets/monkey.png",
];

List animalSounds = [
  "lion.mp3",
  "tiger.mp3",
  "elephant.mp3",
  "peacock.mp3",
  "macaw-sound-382721.mp3",
  "barking-large-and-small-dog-290711.mp3",
  "cat-meow-401729.mp3",
  "horse-neigh-390297.mp3",
  "crow-caw-halloween-sound-effect-322990.mp3",
  "hawk-call-sound-effect-hawk-cry-364472.mp3",
  "cow.mp3",
  "monkey.mp3",
];

final AudioPlayer audioPlayer = AudioPlayer();

void playSound(int index) async {
  await audioPlayer.stop();
  await audioPlayer.play(AssetSource(animalSounds[index]));
}

class _VoiceState extends State<Voice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/k.png"),
          fit: BoxFit.cover,
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "Jungle World'",
            style: TextStyle(
              fontSize: 35.00,
              color: const Color.fromARGB(255, 88, 243, 5),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black, size: 50),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
        ),
        body: Center(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(AnimalImage[index]),
                title: Text(AnimalName[index]),
                trailing: IconButton(
                  icon: Icon(Icons.surround_sound),
                  onPressed: () {
                    playSound(index);
                    print("Icon clicked for ${AnimalName[index]}");
                  },
                ),

                subtitle: SizedBox(height: 30),
              );
            },
            itemCount: AnimalName.length,
          ),
        ),
      ),
    );
  }
}
