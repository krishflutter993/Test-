import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: LoginPage(), debugShowCheckedModeBanner: false));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page", style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(decoration: InputDecoration(hintText: "Username")),
            TextField(decoration: InputDecoration(hintText: "Password")),
            ElevatedButton(onPressed: () {
               

            }, child: Text("Login")
            ),
          ],
        ),
      ),
    );
  }
}
