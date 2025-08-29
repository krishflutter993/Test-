import 'dart:io';

void main()
{
   print("1. Area of Triangle");
   print("2. Area of Rectangle");
   print("3. Area of Circle");
   var choice = int.parse(stdin.readLineSync().toString());

   if (choice == 1)
   {
      print("Enter base  the triangle: ");
      var base = int.parse(stdin.readLineSync().toString());
      print("Enter height  the triangle: ");
      var height = int.parse(stdin.readLineSync().toString());
      var area = 0.5 * base * height;
      print("Area of Triangle = $area");
   }
   else if (choice == 2)
   {
      print("Enter length  the triangle: ");
      var length = int.parse(stdin.readLineSync().toString());
      print("Enter breadth the triangle: ");
      var breadth = int.parse(stdin.readLineSync().toString());
      var area =  length * breadth;
      print("Area of Rectangle = $area");
   }
   else if (choice == 3)
   {
       print("Enter radius of the circle: ");
       var radius = int.parse(stdin.readLineSync().toString());
       var area = 3.14 * radius * radius;
       print("Area of Circle = $area");
   }
   else
   {
      print("your number is not valid");
   }


}