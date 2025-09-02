import 'dart:io';
class Tops
{
  var name;
  var email;

}

void main()
{
 print("Enter your name");
 var n = stdin.readLineSync().toString();

 print("Enter your email");
 var e = stdin.readLineSync().toString();


  var t1 = Tops();
  t1.name = n;
  t1.email = e;

  print("=====print oll ditels=====");
  print("Your Name is ${t1.name}");
  print("Your Name is ${t1.email}");
}