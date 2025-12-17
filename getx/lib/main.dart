import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller.dart';

import 'package:getx/SecondPage.dart';

void main() {
  runApp(GetMaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatelessWidget {
  final CounterController c = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX All in One")),
      body: Center(
        child: Obx(
          () => Text("Count: ${c.count}", style: TextStyle(fontSize: 30)),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: c.increment, child: Icon(Icons.add)),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: c.decrement,
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              Get.to(SecondPage());
            },
            child: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
