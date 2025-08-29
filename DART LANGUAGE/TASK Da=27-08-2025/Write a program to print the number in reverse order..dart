import 'dart:io';

void main()
{
  var rev =0;

  print("Enter Any Number");
  var num = int.parse(stdin.readLineSync().toString());

  while (num != 0)
  {
    int n = num % 10;
    rev=rev*10+n;
    num~/=10;
  }
  print("rev of all digits are: $rev");
}
