import 'dart:io';
void main()
{
  print("Enter base  the triangle: ");
  var base = int.parse(stdin.readLineSync().toString());
  print("Enter height  the triangle: ");
  var height = int.parse(stdin.readLineSync().toString());

  var area = 0.5 * base * height;

  print(area);
}