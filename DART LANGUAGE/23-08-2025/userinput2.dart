import 'dart:io';
void main ()
{
  var myemail = "krish@gmail.com" , mypass = "1234";
  
  print("Enter Your Email");
  var email = stdin.readLineSync().toString();

  print("Enter Your Pass");
  var pass = stdin.readLineSync().toString();
  
  
  if(myemail == email && mypass == pass)
  {
    print("Logged in Succesfully");
  }
  
  else  
  {
      print("Invalid Credentials");
  }
}