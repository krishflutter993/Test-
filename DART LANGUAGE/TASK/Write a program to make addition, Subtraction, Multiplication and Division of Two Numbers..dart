import 'dart:io';
void main()
{
  print("Enter Your Number");
  var a = int.parse(stdin.readLineSync().toString());

  print("Enter Your Number");
  var b = int.parse(stdin.readLineSync().toString());


  var add = a+b;
  var sub = a-b;
  var mul = a*b;
  var div = a/b;

  print(add);
  print(sub);
  print(mul);
  print(div);

}