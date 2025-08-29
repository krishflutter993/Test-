import 'dart:io';

void main() {
  print("Enter Any Number");
  var choice = int.parse(stdin.readLineSync().toString());

  switch (choice) {
    case 1:
      print("You selected sunday");
      break;

    case 2:
      print("You selected monday");
      break;

    case 3:
      print("You selected tuesday");
      break;

    case 4:
      print("You selected wednesday");
      break;

    case 5:
      print("You selected thursday");
      break;

    case 6:
      print("You selected friday");
      break;

    case 7:
      print("You selected saturday");
      break;
  }
}


