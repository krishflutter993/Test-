import 'package:datebas/db.dart';
import 'package:datebas/main.dart';
import 'package:flutter/material.dart';

class addpage extends StatefulWidget {
  const addpage({super.key});

  @override
  State<addpage> createState() => _addpageState();
}

class _addpageState extends State<addpage> {
  MyDb db1 = MyDb();
  List<Map> slist = [];

  @override
  void initState() {
    // TODO: implement initState
    db1.open();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sqflite CRUD"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ditelState()),
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: slist.map((stuone) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(stuone["name"]),
                subtitle: Text(stuone["email"]),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  void getdata() {
    Future.delayed(Duration(milliseconds: 500), () async {
      slist = await db1.db.rawQuery('SELECT * FROM students');
      setState(() {});
    });
  }
}
