import 'dart:io';
void main()
{
  print("Enter Your Name");
  var name = stdin.readLineSync().toString();

  print("Enter Your Age");
  var age = stdin.readLineSync().toString();

  print("Enter Your Birth date");
  var birthdate = stdin.readLineSync().toString();

  print("Enter Your address");
  var address= stdin.readLineSync().toString();



  print("============Your all ditels===========");
  print(name);
  print(age);
  print(birthdate);
  print(address);

}