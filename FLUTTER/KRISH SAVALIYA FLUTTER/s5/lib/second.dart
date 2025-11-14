import 'package:flutter/material.dart';
import 'package:s5/main.dart';
import 'package:s5/voice.dart';

class Second extends StatelessWidget {
  final String faname;
  final String laname;
  final String eamail;
  final String gaender;
  final List<String> aobbies;
  final String? selectedCity;
  const Second({
    super.key,
    required this.faname,
    required this.laname,
    required this.eamail,
    required this.gaender,
    required this.aobbies,
    this.selectedCity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/RegisterPage.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Second Page", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) => {
            if (value == 0)
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                ),
              }
            else if (value == 1)
              {Navigator.pop(context)}
            else if (value == 2)
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Voice()),
                ),
              },
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.pinkAccent),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business, color: Colors.pinkAccent),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.voice_chat, color: Colors.pinkAccent),
              label: 'voice',
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to $faname $laname😍",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "Your Email is $eamail📧",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "Your Gender is $gaender⚧",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "Your City is $selectedCity🏙️",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),

              Text(
                "Your Hobbies are ${aobbies.join(", ")}🎯",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
