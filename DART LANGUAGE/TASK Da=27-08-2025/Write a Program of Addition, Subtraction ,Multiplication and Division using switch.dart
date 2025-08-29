import 'dart:io';

void main ()
{
  print("Enter a number1: ");
  var num1 = int.parse(stdin.readLineSync().toString());

  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division");
  var choice = int.parse(stdin.readLineSync().toString());

  print("Enter a number2: ");
  var num2 = int.parse(stdin.readLineSync().toString());

  switch(choice)
  {
    case 1:
      print("You selected addition");
      var result = num1 + num2;
      print("Your answer : $result");
      break;

    case 2:
      print("You selected Subtraction");
      var result = num1 - num2;
      print("Your answer : $result");
      break;

    case 3:
      print("You selected Multiplication");
      var result = num1 * num2;
      print("Your answer : $result");
      break;

    case 4:
      print("You selected Division");
      var result = num1 / num2;
      print("Your answer : $result");
      break;

  }

}