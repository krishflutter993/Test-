import 'dart:io';
void main()
{
    print("Enter Your PRINCIPAL");
    var p = int.parse(stdin.readLineSync().toString());

    print("Enter Your RATE");
    var r = int.parse(stdin.readLineSync().toString());

    print("Enter Your NUMBER OF PERIODS");
    var n = int.parse(stdin.readLineSync().toString());

  var i = p*r*n/100;

  print("=====YOUR OUTPUT=====");
  print("Your rat of intrest  : $i");
}