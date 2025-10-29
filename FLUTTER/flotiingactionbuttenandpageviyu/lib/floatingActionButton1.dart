import 'package:flotiingactionbuttenandpageviyu/Customized%20PageView.dart';
import 'package:flotiingactionbuttenandpageviyu/PageView%20Example1.dart';
import 'package:flotiingactionbuttenandpageviyu/PageView.builder%20Example1.dart';
import 'package:flotiingactionbuttenandpageviyu/PageView.custom%20Example1.dart';
import 'package:flutter/material.dart';

class butten extends StatefulWidget {
  const butten({super.key});
  @override
  State<butten> createState() => _buttenState();
}

class _buttenState extends State<butten> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView - Flutter'),
        centerTitle: true,
        leading: Icon(Icons.menu, color: Colors.black),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageViewTest1()),
                    );
                  },
                  child: Text(
                    'PageView Example',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.amber[800],
                  height: 50,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageViewBuild()),
                    );
                  },
                  child: Text(
                    'PageView.builder Example',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),

                  color: Colors.pink,
                  height: 50,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageViewCustom()),
                    );
                  },
                  child: Text(
                    'PageView.custom Example',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(12),
                  ),
                  color: Colors.green,
                  height: 50,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CustomizedPageView(),
                      ),
                    );
                  },
                  child: Text(
                    'Customized PageView',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.blue,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
