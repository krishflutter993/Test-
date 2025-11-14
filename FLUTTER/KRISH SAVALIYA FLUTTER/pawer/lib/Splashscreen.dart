import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pawer/main.dart'; // Ensure Main widget exists here

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Main()),
        );
      }
    });
  }
  // @override
  // void initState() {
  //   super.initState();
  //   _checkInternetAndNavigate();
  // }

  // Future<void> _checkInternetAndNavigate() async {
  //   var connectivityResult = await Connectivity().checkConnectivity();

  //   if (connectivityResult == ConnectivityResult.mobile ||
  //       connectivityResult == ConnectivityResult.wifi) {
  //     // Internet available
  //     Timer(const Duration(seconds: 3), () {
  //       if (mounted) {
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(builder: (context) => const Main()),
  //         );
  //       }
  //     });
  //   } else {
  //     // No internet
  //     _showNoInternetDialog();
  //   }
  // }

  // void _showNoInternetDialog() {
  //   showDialog(
  //     context: context,
  //     barrierDismissible: false, // Prevent dialog dismiss on tap outside
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text("No Internet"),
  //         content: const Text("Internet connection is required to continue."),
  //         actions: [
  //           TextButton(
  //             child: const Text("Retry"),
  //             onPressed: () {
  //               Navigator.of(context).pop(); // Close dialog
  //               _checkInternetAndNavigate(); // Retry
  //             },
  //           ),
  //           TextButton(
  //             child: const Text("Exit"),
  //             onPressed: () {
  //               SystemNavigator.pop(); // Exit the app
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          "assets/w.png", // Ensure this image is in your assets and listed in pubspec.yaml
        ),
      ),
    );
  }
}
