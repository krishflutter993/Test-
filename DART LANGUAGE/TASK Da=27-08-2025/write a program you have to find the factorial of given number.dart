import 'dart:io';

void main()
{
   var fac = 1;

  print("Enter your factorial number.");
  var num = int.parse(stdin.readLineSync().toString());

  for (int i = 1; i <= num; i++)
  {
    fac *= i;
  }
   print("Your factory number : $fac");
}