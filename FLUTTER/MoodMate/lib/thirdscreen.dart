import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Thirdscreen extends StatefulWidget
{
  @override
  ThirdState createState() => ThirdState();
}

class ThirdState extends State<Thirdscreen>
{
  bool isHappy = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Current Mod:",style: TextStyle(fontSize: 20),),
        SizedBox(height: 10,),
        Text(isHappy? '😘 HAPPY':'😞 SAD',style: TextStyle(fontSize: 35),),

        SizedBox(height: 10,),
        TextButton(
            onPressed: () {
              setState(() {
                isHappy = !isHappy;
              });
            }, child: Text("Change Mood",style: TextStyle(fontSize: 15,color: Colors.deepPurpleAccent),)),
      ],
    );
  }
}

