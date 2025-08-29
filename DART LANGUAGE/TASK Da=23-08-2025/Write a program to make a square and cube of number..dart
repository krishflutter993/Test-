import 'dart:io';
void main ()
{
  print("Enter Your Number");
  var n = int.parse(stdin.readLineSync().toString());
  
  var square = n*n;
  var cube = n*n*n;
  
  print("square is : $square");
  print("cube is : $cube");

}