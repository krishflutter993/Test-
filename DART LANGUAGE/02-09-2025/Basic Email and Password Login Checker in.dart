import 'dart:io';
class Tops
{
  var pass = "12345";
  var email  = "k@.com";

  var p;
  var e;

  display()
  {

    if(pass == p && email == e)
    {
      print("loging scsesfuli");
    }
    else
    {
      print("loging fail");
    }
  }



}

void main()
{
  print("Enter your pass");
  var p = stdin.readLineSync().toString();

  print("Enter your email");
  var e = stdin.readLineSync().toString();


  var t1 = Tops();
  t1.p = p;
  t1.e = e;

  print("=====print oll ditels=====");
  t1.display();

}