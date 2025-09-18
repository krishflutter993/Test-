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

                   Text("Krish",style: TextStyle(fontSize: 20.00,color: Colors.purple)),
                   SizedBox(height: 15,),
                   Text("Php", style: TextStyle(fontSize: 20.0, color: Colors.amberAccent)),
                   SizedBox(height: 15,),
                   Text("Python", style: TextStyle(fontSize: 20.0, color: Colors.blue)),
                   SizedBox(height: 15,),
                   Text("Java", style: TextStyle(fontSize: 20.0, color: Colors.red)),
                   SizedBox(height: 15,),
                   Text("C++", style: TextStyle(fontSize: 20.0, color: Colors.green)),
                   SizedBox(height: 15,),
                   Text("JavaScript", style: TextStyle(fontSize: 20.0, color: Colors.orange)),
                   SizedBox(height: 15,),
                   Text("Dart", style: TextStyle(fontSize: 20.0, color: Colors.cyan)),
                   SizedBox(height: 15,),
                   Text("Swift", style: TextStyle(fontSize: 20.0, color: Colors.pink)),
                   SizedBox(height: 15,),
                   Text("Kotlin", style: TextStyle(fontSize: 20.0, color: Colors.deepPurple)),
                   SizedBox(height: 15,),
                   Text("Ruby", style: TextStyle(fontSize: 20.0, color: Colors.teal)),
                   SizedBox(height: 15,),
                   Text("Go", style: TextStyle(fontSize: 20.0, color: Colors.lime)),


                 ],
               )
          ),
     );

  }
}