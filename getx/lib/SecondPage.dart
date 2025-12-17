import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar("Hi", "Snackbar called");
              },
              child: Text("Show Snackbar"),
            ),

            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(title: "Alert", middleText: "Dialog opened");
              },
              child: Text("Show Dialog"),
            ),

            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 200,
                    color: Colors.white,
                    child: Center(child: Text("Bottom Sheet")),
                  ),
                );
              },
              child: Text("Show BottomSheet"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.back();
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
