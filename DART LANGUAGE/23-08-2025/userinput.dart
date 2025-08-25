import 'dart:io';
void main()
{
  print("Enter Your Name");
  var name = stdin.readLineSync().toString();

  print("Enter Your Age");
  var age = stdin.readLineSync().toString();

  print("Enter Your salary");
  var salary = int.parse(stdin.readLineSync().toString());

  print("Enter Your Exsalary");
  var Exsalary= int.parse(stdin.readLineSync().toString());

  var fainalsalary = salary+Exsalary;

  print("============Your all ditels===========");
  print(name);
  print(age);
  print(salary);
  print(Exsalary);
  print(fainalsalary);



}