import 'dart:io';

void main()
{

  print("Enter Any Number");
  var num = int.parse(stdin.readLineSync().toString());

   var last = num %10;
   var first = num ;

   while(first >= 10)
   {
       first~/=10;
   }
   print("Your last number : $last");
   print("Your first number : $first");

   int sum = last + first;
  print("Your sum is all  number : $sum");



}