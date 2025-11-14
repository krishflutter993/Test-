import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget
{
  @override
  SecondState createState() => SecondState();
}

class  SecondState extends State<Secondscreen>
{
   int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Likes : $count"),
        SizedBox(height: 10,),
        ElevatedButton(
          onPressed: ()
          {
          setState(() {
            count++;
          });
        },child: Text("Likes"),),
      ],
    );
  }
}


