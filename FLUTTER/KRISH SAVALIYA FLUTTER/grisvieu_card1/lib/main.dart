import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();

  List<String> tech = [
    "apple",
    "banana",
    "grapes",
    "mango",
    "orange",
    "pineapple",
    "watermelon",
    "kiwi",
    "pomegranate",
    "strawberry",
    "papaya",
    "guava",
    "blueberry",
    "cherry",
  ];

  List techimg = [
    //apple
    "assets/apple.png",
    //banana
    "assets/banana.png",
    //grapes
    "assets/Blue_Grape_in_Gold_(23734375518).png",
    //mango
    "assets/istockphoto-2164146167-612x612manago.png",
    //orange
    "assets/wet-orange-fruit-leaves-isolated-white-23331239.png",
    //pineapple
    "assets/pineapple-5108775_640.png",
    //watermelon
    "assets/istockphoto-649824716-612x612water.png",
    //kiwi
    "assets/juicy-kiwi-fruit-leaves-isolated-260nw-84220885.png",
    //pomegranate
    "assets/360_F_545478431_Cjh4MLiHspQXDMR7n5o3JKMkrbzIm9tidaidam.png",
    //strawberry
    "assets/stock-photo-strawberry-fruit-closeup-on-white.png",
    //papaya
    "assets/papaya-4898583.png",
    //guava
    "assets/pink-guava-fruit-pink-guava-fruit-isolated-white-background-110984781.png",
    //blueberry
    "assets/photo-1577916082233-f97ed22e4df8blue.png",
    //cherry
    "assets/fruit-3016761_640.png",
  ];
  List<String> filteredTech = [];
  List<String> filteredTechimg = [];

  @override
  void initState() {
    super.initState();
    filteredTech = List.from(tech);
    filteredTechimg = List.from(techimg);
  }

  void _filterItems(String query) {
    final lowerQuery = query.toLowerCase();
    final List<String> newTech = [];
    final List<String> newTechimg = [];

    for (int i = 0; i < tech.length; i++) {
      if (tech[i].toLowerCase().contains(lowerQuery)) {
        newTech.add(tech[i]);
        newTechimg.add(techimg[i]);
      }
    }

    setState(() {
      filteredTech = newTech;
      filteredTechimg = newTechimg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: _controller,
            onChanged: _filterItems,
            decoration: InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  _controller.clear();
                  _filterItems('');
                },
              ),
            ),
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: filteredTech.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Center(
              child: Column(
                children: [
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      filteredTechimg[index],
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // SizedBox(height: 10),
                  Text(
                    filteredTech[index],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(height: 10),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 3,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) =>
                        Icon(Icons.star, color: Colors.amber),
                    onRatingUpdate: (rating) {
                      print(rating);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Your Rating: $rating')),
                      );
                    },
                  ),
                ],
              ),
            ),
            //title: Image.network(techimg[index],width: 250,height: 150,),
            // subtitle: Text(tech[index]),
          );
        },
      ),
    );
  }
}
