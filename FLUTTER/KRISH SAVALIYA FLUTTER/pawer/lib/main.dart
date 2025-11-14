import 'package:flutter/material.dart';

import 'SecondScreen.dart';
import 'Splashscreen.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen(), debugShowCheckedModeBanner: false));
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  TextEditingController mob = TextEditingController();
  TextEditingController pass = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  bool p = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/k.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 50),
              child: Text(
                'Welcome\nBack',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3,
                ),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: mob,
                              decoration: InputDecoration(
                                labelText: "Enter email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.00),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter Email";
                                } else if (!RegExp(
                                  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                ).hasMatch(value)) {
                                  return "Please Enter Valid Email";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 30),
                            TextFormField(
                              controller: pass,
                              obscureText: p,
                              decoration: InputDecoration(
                                labelText: "Enter Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    p ? Icons.visibility_off : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      p = !p;
                                    });
                                  },
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter password";
                                } else if (value.length < 6) {
                                  return "Password must be at least 6 characters";
                                } else if (!RegExp(
                                  r'(?=.*[a-z])',
                                ).hasMatch(value)) {
                                  return "Password must contain at least one lowercase letter";
                                } else if (!RegExp(
                                  r'(?=.*[A-Z])',
                                ).hasMatch(value)) {
                                  return "Password must contain at least one uppercase letter";
                                } else if (!RegExp(
                                  r'(?=.*\d)',
                                ).hasMatch(value)) {
                                  return "Password must contain at least one number";
                                } else if (!RegExp(
                                  r'(?=.*[@$!%*?&])',
                                ).hasMatch(value)) {
                                  return "Password must contain at least one special character (@\$!%*?&)";
                                }

                                return null;
                              },
                            ),
                            SizedBox(height: 40),
                            ElevatedButton.icon(
                              onPressed: () {
                                String a = mob.text.toString();
                                String b = pass.text.toString();
                                if (_formkey.currentState!.validate()) {
                                  if (a == "krishna2737@gmail.com" &&
                                      b == "Krish@2737") {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text("Logged in Succesfully"),
                                      ),
                                    );
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SecondScreen(),
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text("Invalid Credentials"),
                                      ),
                                    );
                                  }
                                }
                              },
                              icon: Icon(Icons.login),
                              label: Text("Login"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
