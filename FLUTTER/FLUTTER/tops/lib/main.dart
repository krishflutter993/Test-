import 'package:flutter/material.dart';
import 'package:tops/tops.dart';

import 'SecondScreen.dart';








void main() {
  runApp(MaterialApp(home:Splashscreen(),debugShowCheckedModeBanner: false,));

}
class FormEx extends StatefulWidget {
  const FormEx({super.key});

  @override
  State<FormEx> createState() => _FormExState();
}

class _FormExState extends State<FormEx> {
  TextEditingController mob = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController s = TextEditingController();
  var  _formkey = GlobalKey<FormState>();
  bool p = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login Page"),),
        body:Form(
            key: _formkey,
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(18.0),

                    child:Column(
                      children: [
                        Center(
                          child: Text("TOPS TECHNOLOGIES",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                        ),
                        TextFormField(controller:s,decoration: InputDecoration(labelText: "Enter name",border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.00))),
                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return "Please Enter Email";
                            }
                            return null;
                          },),
                        SizedBox(height: 10,),
                       TextFormField(controller:mob,decoration: InputDecoration(labelText: "Enter Email",border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.00))),
                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return "Please Enter Email";
                            }
                            return null;
                          },),

                        SizedBox(height: 10,),
                        TextFormField(controller: pass, obscureText: p, decoration: InputDecoration(labelText: "Enter Password", border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0),),
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
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          String w = s.text.toString();
                          String a =mob.text.toString();
                          String b =pass.text.toString();if (_formkey.currentState!.validate()) {
                            if (a == "krish2737@gmail.com" && b == "123") {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Logged in successfully",)),
                              );

                              // Navigating to SecondScreen and passing the user's email
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SecondScreen(username: w),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Invalid email or password")),
                              );
                            }
                          }


                        },child: Text("Login"),)
                      ],
                    )
                )
            )
        )
    );
  }
}
