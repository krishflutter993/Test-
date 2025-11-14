import 'package:datebas/db.dart';
import 'package:datebas/viewpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ditelState(), debugShowCheckedModeBanner: false));
}

class ditelState extends StatefulWidget {
  const ditelState({super.key});

  @override
  State<ditelState> createState() => __ditelStateState();
}

class __ditelStateState extends State<ditelState> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  bool p = true;
  MyDb db1 = MyDb();

  @override
  void initState() {
    // TODO: implement initState
    //super.initState();
    db1.open();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login page"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => addpage()),
                );
              },
              icon: Icon(Icons.view_day),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(16.00),
          child: Center(
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(labelText: "Enter your name"),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(labelText: "Enter your email"),
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
                SizedBox(height: 10),
                TextFormField(
                  controller: pass,
                  obscureText: p,
                  decoration: InputDecoration(
                    labelText: "Enter Password",

                    suffixIcon: IconButton(
                      icon: Icon(p ? Icons.visibility_off : Icons.visibility),
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
                    } else if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
                      return "Password must contain at least one lowercase letter";
                    } else if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
                      return "Password must contain at least one uppercase letter";
                    } else if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
                      return "Password must contain at least one number";
                    } else if (!RegExp(r'(?=.*[@$!%*?&])').hasMatch(value)) {
                      return "Password must contain at least one special character (@\$!%*?&)";
                    }

                    return null;
                  },
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    String n = name.text.toString();
                    String e = email.text.toString();
                    String p = pass.text.toString();

                    db1.db.rawInsert(
                      "insert into students (name,email,password) values (?,?,?)",
                      [n, e, p],
                    );
                    print("Inserted");
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => addpage()),
                    );
                  },
                  child: Text("Insert"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
