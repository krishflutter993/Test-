import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:HomeScreen(),debugShowCheckedModeBanner: false),);
}

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
     return Scaffold(
       appBar: AppBar(title: Text("HomeScreen"),backgroundColor: Colors.blue,centerTitle: true,),
       body: SingleChildScrollView(
         child:Center(
           child: Column(
             children:
             [
               SizedBox(height: 20.00,),

               Image.network(
                 "https://imgs.search.brave.com/bEdBfih0lMjIyVN2dztcg-ebIroIwpX8qdkulMlpuLo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWdk/LmFlcGxjZG4uY29t/LzEwNTZ4NTk0L24v/Y3cvZWMvMTkyNzQ3/L201LWV4dGVyaW9y/LXJpZ2h0LWZyb250/LXRocmVlLXF1YXJ0/ZXItMTAuanBlZz9p/c2lnPTAmcT04MCZ3/bT0x",
                 width: 200,
                 height: 200,
               ),
               Text("BMW M5 :",style: TextStyle(fontSize: 20.00),),
               SizedBox(height: 20.00,),


               Image.network(
                 "https://imgs.search.brave.com/nTNvgX1Olgkw_VES_Pb_LohyY35oPk01YJz6j10Irk0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzhiLzQ5/L2VlLzhiNDllZTBh/M2JiMzc0ZWZjOWE0/N2Y1OGJmNjVhOTIx/LmpwZw",
                 width: 200,
                 height: 200,
               ),
               Text("G63 :",style: TextStyle(fontSize: 20.00),),
               SizedBox(height: 20.00,),


               Image.network(
                 "https://imgs.search.brave.com/E5E7ThAzmj1X-lsZkVgJws3PAqE04PoPHp1TLJovbs8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy9kZWYt/MjZteS1vY3RhLWJs/YWNrLTA0MDcyNS0w/MWJ3LTY4NjZkYTFl/NWI1ZTkuanBnP2Ny/b3A9MC45MjN4dzox/LjAweGg7MCwwJnJl/c2l6ZT05ODA6Kg",
                 width: 200,
                 height: 200,
               ),
               Text("DEFENDER :",style: TextStyle(fontSize: 20.00),),
               SizedBox(height: 20.00,),


               Image.network(
                 "https://imgs.search.brave.com/Rv6Tx7GJAWrGK6dWloJu1LRt6DWplTxfMqYnIUwOMjU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wcmV2/aWV3LnJlZGQuaXQv/MzItbWlsbGlvbi1y/b2xscy1yb3ljZS1s/YS1yb3NlLW5vaXJl/LWRyb3B0YWlsLXNw/b3R0ZWQtdjAtNHcw/ZzJmeThiODlmMS5q/cGc_d2lkdGg9NjQw/JmNyb3A9c21hcnQm/YXV0bz13ZWJwJnM9/NzU3YTIwNDhiNmQ2/MzIwNGQ1YzIzYTc1/Y2E3ZTlkODIwMzMx/ZThkZQ",
                 width: 200,
                 height: 200,
               ),
               Text("ROLLS-ROYCE  :",style: TextStyle(fontSize: 20.00),),
               SizedBox(height: 20.00,),

               ElevatedButton(
                 onPressed: () {
                   print("clicked");
                   },
                 child: Text("Submit"),
               ),
               SizedBox(height: 20.00,),

               Container
                 (
                   child: Padding
                     (
                       padding: EdgeInsets.all(16.00),
                       child: Text("🚘CAR LOVER",style: TextStyle(fontSize: 20.00),),
                     ),

                ),
               Container
               (
                 color: Colors.purpleAccent,
                 padding: EdgeInsets.all(14.00),

                 child: Row
                   (
                   children: [
                     CircleAvatar(
                       radius: 40,
                       backgroundImage:NetworkImage("https://imgs.search.brave.com/RlT74aPFB_4rri5De7hw3lOr2Z770TcFrAlfrY8vxVk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTQw/OTc1MTk2MC9waG90/by95b3VuZy1idXNp/bmVzc21hbi11c2lu/Zy1kaWdpdGFsLXRh/YmxldC13aGlsZS13/b3JraW5nLWluLWJ1/c2luZXNzLW9mZmlj/ZS5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9RTB5N1ZGSzFk/OU1POUF3QjQ5SUVY/OUhoRjh3NW5uYjdP/QndTTWpCeW40UT0") ,

                     ),
                     SizedBox(height: 16,width: 16,),

                     Column(
                       children: [
                         Text("Krish Savaliya",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                         Text('Flutter Developer', style: TextStyle(color: Colors.grey)),
                       ],

                     )
                   ],
                 )

               )
             ],
           ),
         )


       ),
     );
  }
}