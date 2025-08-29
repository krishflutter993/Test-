import 'dart:io';
void main()
{
  print("Enter length of the rectangle: ");
  var langth = int.parse(stdin.readLineSync().toString());

  print("Enter breadth of the rectangle: ");
  var braeadth = int.parse(stdin.readLineSync().toString());

  var area = langth*braeadth;

  print(area);
}