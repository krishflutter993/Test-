import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Profile(),debugShowCheckedModeBanner: false));
}

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var count =0;
  var isHappy = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Screen")),
      body: Column(
        children: [
          Container(
            color: Colors.purpleAccent,
            padding: EdgeInsets.all(16.0),

            child: Center(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:AssetImage("abcd.png") ,
                  ),
                  SizedBox(height: 16,width: 16,),
                  Column(
                    children: [
                      Text(" Krish Savaliya", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87, ),),
                      Text(" Flutter Developer",style: TextStyle(fontSize: 16,color: Colors.grey),),
                    ],
                  )

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

            }, child:Text("LIKES")),
          Text("Current Mod:",style: TextStyle(fontSize: 20),),
          SizedBox(height: 16,),
          Text(isHappy ?"😘 HAPPY":'🥺 SAD',style: TextStyle(fontSize: 25),),

          TextButton(
              onPressed: () {
               setState(() {
                 isHappy =!isHappy;
               });
              },child:Text("Change Mood",style: TextStyle(fontSize: 15,color: Colors.deepPurpleAccent),)),
          Container(
            child: Padding(
              padding: EdgeInsets.all(16.00),
              child: Text("Powered by flutter",style: TextStyle(fontSize: 20.00,color: Colors.grey),),
            )


          )

        ],
      ),
    );
  }
}
