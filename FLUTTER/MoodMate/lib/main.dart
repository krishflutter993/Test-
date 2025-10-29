import 'package:flutter/material.dart';
import 'package:moodmate/firstscreen.dart';
import 'package:moodmate/secondscreen.dart';
import 'package:moodmate/thirdscreen.dart';
import 'package:moodmate/fourthscreen.dart';

void main() {

  runApp(MaterialApp(home: Firstscreen(),debugShowCheckedModeBanner: false,));
}
class Firstscreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
         appBar: AppBar(title: Text("PROFILE SCREEN"),),
        body: Column(
           children: [
             

                Firstscreen1(),
                SizedBox(height: 20,),
                Secondscreen(),
                SizedBox(height: 20,),
                Thirdscreen(),
                SizedBox(height: 20,),
                Fourthscreen(),
                SizedBox(height: 20,),

          ],
        ),
      );
  }
}


