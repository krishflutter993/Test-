import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Firstscreen1 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container(
       color: CupertinoColors.activeBlue,
       padding: EdgeInsets.all(20.00),
        child: Row(
          children:
          [
            CircleAvatar(backgroundImage: NetworkImage("abcd.png"),radius: 80,)
            SizedBox(height: 16,width: 20,),
            Column(
              children: [
                Text(" Krish Savaliya", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87, ),),
                Text(" Flutter Developer",style: TextStyle(fontSize: 16,color: Colors.grey),),
              ],
            )
          ],
        ),
    );
  }
}
