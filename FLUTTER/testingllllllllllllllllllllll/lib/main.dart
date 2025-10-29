import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: CustomLeadingDrawerApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class CustomLeadingDrawerApp extends StatelessWidget {
  // Create a key to control the Scaffold

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://imgs.search.brave.com/PHVQfvj-ZW1bUDpXeZRSxAWj8w1EwE_gdmQbeb_UbiM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1wc2Qv/aGFwcHktZGl3YWxp/LXRoZW1lLWluc3Rh/Z3JhbS1wb3N0LWRp/d2FsaS1iYWNrZ3Jv/dW5kLXZlcnRpY2Fs/XzEwMjgzMzAtMTMu/anBnP3NlbXQ9YWlz/X2h5YnJpZCZ3PTc0/MCZxPTgw',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 70, top: 50),
              child: Text(
                'HAPPY DIWALI',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
