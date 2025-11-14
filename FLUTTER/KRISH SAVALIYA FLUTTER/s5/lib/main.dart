import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:s5/game.dart';

import 'package:s5/second.dart';
import 'package:s5/voice.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

enum Gender { Male, female }

class _MyAppState extends State<MyApp> {
  List<String> cities = [
    'Rajkot',
    'Ahmedabad',
    'Bangalore',
    'Chennai',
    'Delhi',
    'Hyderabad',
    'Kolkata',
    'Mumbai',
    'Pune',
    'Jaipur',
    'Lucknow',
    'Indore',
    'Bhopal',
    'Patna',
    'Vadodara',
    'Varanasi',
    'Srinagar',
    'Amritsar',
    'Navi Mumbai',
    'Coimbatore',
  ];
  String? selectedCity;
  bool isSwitched = false;
  var textValue = 'Switch is ON';
  toggleSwitch(bool value) async {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch is OFF';
      });

      await player.stop();
      print('Switch Button is OFF');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch is ON';
      });
      await player.play(AssetSource('k3.mp3'));
      print('Switch Button is ON');
    }
  }

  @override
  void initState() {
    super.initState();
    player.play(AssetSource('k3.mp3'));
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  Gender? _gender = Gender.Male;
  final AudioPlayer player = AudioPlayer();
  bool cricket = false;
  bool reading = false;
  bool music = false;
  bool football = false;
  bool basketball = false;
  bool swimming = false;
  bool painting = false;
  bool hiking = false;
  bool gaming = false;
  bool dancing = false;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
      print('Home button tapped');
    } else if (index == 1) {
      // Handle Business button tap
      print('Business button tapped');
    } else if (index == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Voice()));
      print('School button tapped');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/s copy.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Register Page", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Krish Patel",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                accountEmail: Text(
                  "krishpatel2737@gmail.com",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                decoration: BoxDecoration(color: Colors.pinkAccent),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/q.png"),
                ),
              ),

              ListTile(
                leading: Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: Colors.pinkAccent,
                  activeTrackColor: Colors.grey,
                  inactiveThumbColor: Colors.pinkAccent,
                  inactiveTrackColor: Colors.grey,
                ),
                title: Text("Music ON/OFF", style: TextStyle(fontSize: 18)),
              ),
              ListTile(
                leading: Icon(Icons.games, color: Colors.pinkAccent),
                title: Text("Game", style: TextStyle(fontSize: 18)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,

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
              label: 'Voice',
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to Registration Page",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: fname,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    labelText: 'First Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: lname,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    labelText: 'Last Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    labelText: 'Enter your Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    labelText: 'Select City',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  value: selectedCity,
                  items: cities.map((city) {
                    return DropdownMenuItem<String>(
                      value: city,
                      child: Text(city),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCity = value;
                    });
                  },
                ),
                SizedBox(height: 20),
                Text("Gender:", style: TextStyle(color: Colors.white)),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text(
                          "Male",
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: Radio(
                          value: Gender.Male,
                          groupValue: _gender,
                          onChanged: (value) {
                            setState(() {
                              _gender = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          "Female",
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: Radio(
                          value: Gender.female,
                          groupValue: _gender,
                          onChanged: (value) {
                            setState(() {
                              _gender = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text("Hobbies:", style: TextStyle(color: Colors.white)),
                Wrap(
                  spacing: 10,
                  children: [
                    CheckboxListTile(
                      title: Text(
                        "Cricket",
                        style: TextStyle(color: Colors.black),
                      ),
                      value: cricket,
                      onChanged: (value) {
                        setState(() {
                          cricket = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(
                        "Reading",
                        style: TextStyle(color: Colors.black),
                      ),
                      value: reading,
                      onChanged: (value) {
                        setState(() {
                          reading = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(
                        "Music",
                        style: TextStyle(color: Colors.black),
                      ),
                      value: music,
                      onChanged: (value) {
                        setState(() {
                          music = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(
                        "Football",
                        style: TextStyle(color: Colors.black),
                      ),
                      value: football,
                      onChanged: (value) {
                        setState(() {
                          football = value!;
                        });
                      },
                    ),

                    CheckboxListTile(
                      title: Text(
                        "Basketball",
                        style: TextStyle(color: Colors.black),
                      ),
                      value: basketball,
                      onChanged: (value) {
                        setState(() {
                          basketball = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(
                        "Swimming",
                        style: TextStyle(color: Colors.black),
                      ),
                      value: swimming,
                      onChanged: (value) {
                        setState(() {
                          swimming = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(
                        "Painting",
                        style: TextStyle(color: Colors.black),
                      ),
                      value: painting,
                      onChanged: (value) {
                        setState(() {
                          painting = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(
                        "Hiking",
                        style: TextStyle(color: Colors.black),
                      ),
                      value: hiking,
                      onChanged: (value) {
                        setState(() {
                          hiking = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(
                        "Gaming",
                        style: TextStyle(color: Colors.black),
                      ),
                      value: gaming,
                      onChanged: (value) {
                        setState(() {
                          gaming = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(
                        "Dancing",
                        style: TextStyle(color: Colors.black),
                      ),
                      value: dancing,
                      onChanged: (value) {
                        setState(() {
                          dancing = value!;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 30),

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      String selectedgender = _gender == Gender.Male
                          ? "Male"
                          : "Female";

                      List<String> hobbies = [
                        if (cricket) "Cricket",
                        if (reading) "Reading",
                        if (music) "Music",
                        if (football) "Football",
                        if (basketball) "Basketball",
                        if (swimming) "Swimming",
                        if (painting) "Painting",
                        if (hiking) "Hiking",
                        if (gaming) "Gaming",
                        if (dancing) "Dancing",
                      ];

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Second(
                            faname: fname.text,
                            laname: lname.text,
                            eamail: email.text,
                            gaender: selectedgender,
                            aobbies: hobbies,
                            selectedCity: selectedCity,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Submit", style: TextStyle(color: Colors.blue)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
