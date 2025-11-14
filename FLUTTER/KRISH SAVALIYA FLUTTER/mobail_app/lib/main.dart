import 'package:flutter/material.dart';
import 'package:mobail_app/Screen/dashboard_screen.dart';
import 'package:mobail_app/Screen/loging.dart';
import 'package:mobail_app/utils/shared_prefs.dart';

void main() async {
  // Flutter bindings initialize करो (क्योंकि हम async call कर रहे हैं)
  WidgetsFlutterBinding.ensureInitialized();

  // SharedPrefs से login status लो
  bool loggedIn = await SharedPrefs.isLoggedIn();

  // App run करो और decide करो कौनसी screen दिखेगी
  runApp(MyApp(isLoggedIn: loggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobail App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),

      home: isLoggedIn ? const DashboardScreen() : const Loging(),
    );
  }
}
