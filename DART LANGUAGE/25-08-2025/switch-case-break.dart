import 'dart:io';
void main()
{
  print("Enter Your Number 1 to 3");
  var num = int.parse(stdin.readLineSync().toString());

  switch(num)
  {
     case 1 : print("Your Selected Language is Gujarati");
     break;

    case 2 : print("Your Selected Language is Hindi");
    break;

    case 3 : print("Your Selected Language is English");
    break;

  }

}