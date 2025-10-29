import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var count = 0;
  var isHappy = true;

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = TextButton(
      onPressed: () {
        exit(0);
        Navigator.of(context).pop();
      },
      child: Text("OK"),
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Simple Alert"),
      content: Text("This is an alert message."),
      actions: [okButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldpop = await showAlertDialog(context);
        return shouldpop;
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/l.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 130, right: 35),
                child: Text(
                  'Dashboard Screen',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.3,
                    ),

                    child: Center(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Center(),
                              Text(
                                " Krish Savaliya",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              Text(
                                " Flutter Developer",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Text("Likes: $count", style: TextStyle(fontSize: 16)),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Text("LIKES"),
                  ),
                  Text("Current Mod:", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 16),
                  Text(
                    isHappy ? "😘 HAPPY" : '🥺 SAD',
                    style: TextStyle(fontSize: 25),
                  ),

                  TextButton(
                    onPressed: () {
                      setState(() {
                        isHappy = !isHappy;
                      });
                    },
                    child: Text(
                      "Change Mood",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(16.00),
                      child: Text(
                        "Powered by flutter",
                        style: TextStyle(fontSize: 20.00, color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
