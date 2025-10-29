
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fourthscreen extends StatelessWidget
{


  @override
  Widget build(BuildContext context)
  {
    return Center(
         child:Container(
             child: Padding(
              padding: EdgeInsets.all(16.00),
              child: Text("Powered by flutter",style: TextStyle(fontSize: 20.00,color: Colors.grey),),
             )
         )
    );

  }
}
