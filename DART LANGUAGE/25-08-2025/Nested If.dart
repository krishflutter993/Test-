import 'dart:io';

void main()
{
  print("Enter Your Age");
  var age = int.parse(stdin.readLineSync().toString());

  if(age>=18)
  {
    print("Eligible to vote");

    if(age>=60)
    {
      print("Senior Citizen");
    }

    else
    {
      print("young age");
    }
  }

  else
  {
    print("Eligible not to vote");
  }
}