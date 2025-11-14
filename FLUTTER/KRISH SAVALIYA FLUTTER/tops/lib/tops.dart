
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';


import 'main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
 @override
  void initState()
 {
   checkconnection();
   //Timer(Duration(seconds:5),() => Navigator.push(context,MaterialPageRoute(builder: (context) => FormEx())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/p.png"
        ),
      ),
    );
  }

 void checkconnection()async
 {
   var connectivityresult = await Connectivity().checkConnectivity();

   if(connectivityresult.contains(ConnectivityResult.mobile))
   {
     Timer(Duration(seconds: 3), () => Navigator.pushReplacement(
         context, MaterialPageRoute(builder: (context) => FormEx()
     )));
   }
   else if(connectivityresult.contains(ConnectivityResult.wifi))
   {
     Timer(Duration(seconds: 3), () => Navigator.pushReplacement(
         context, MaterialPageRoute(builder: (context) => FormEx()
     )));
   }
   else
   {
     //shownetworkerrordialog();
   print("network error");
   }

 }
}
