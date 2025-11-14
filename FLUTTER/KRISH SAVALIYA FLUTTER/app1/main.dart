import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:MyApp(),debugShowCheckedModeBanner: false),);
}
class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
      return Scaffold
     (
        appBar: AppBar(title: Text("MY FIRST APP"),backgroundColor: Colors.purpleAccent,),
        body: Center
          (
             child: Column
               (
                 children:
                 [
                   SizedBox(height: 15,),

                   Text("Krish", style: TextStyle(fontSize: 20.0, color: Colors.purple, backgroundColor: Colors.yellow)),
                   SizedBox(height: 15),
                   Text("Php", style: TextStyle(fontSize: 20.0, color: Colors.amberAccent, backgroundColor: Colors.black12)),
                   SizedBox(height: 15),
                   Text("Python", style: TextStyle(fontSize: 20.0, color: Colors.blue, backgroundColor: Colors.grey[200])),
                   SizedBox(height: 15),
                   Text("Java", style: TextStyle(fontSize: 20.0, color: Colors.red, backgroundColor: Colors.black12)),
                   SizedBox(height: 15),
                   Text("C++", style: TextStyle(fontSize: 20.0, color: Colors.green, backgroundColor: Colors.white70)),
                   SizedBox(height: 15),
                   Text("JavaScript", style: TextStyle(fontSize: 20.0, color: Colors.orange, backgroundColor: Colors.brown[100])),
                   SizedBox(height: 15),
                   Text("Dart", style: TextStyle(fontSize: 20.0, color: Colors.cyan, backgroundColor: Colors.indigo[50])),
                   SizedBox(height: 15),
                   Text("Swift", style: TextStyle(fontSize: 20.0, color: Colors.pink, backgroundColor: Colors.grey[300])),
                   SizedBox(height: 15),
                   Text("Kotlin", style: TextStyle(fontSize: 20.0, color: Colors.deepPurple, backgroundColor: Colors.amber[50])),
                   SizedBox(height: 15),
                   Text("Ruby", style: TextStyle(fontSize: 20.0, color: Colors.teal, backgroundColor: Colors.lightGreen[100])),
                   SizedBox(height: 15),
                   Text("Go", style: TextStyle(fontSize: 20.0, color: Colors.lime, backgroundColor: Colors.blueGrey[50])),


                 ],
               )
          ),
     );

  }
}