import 'dart:io';

void main()
{
  var i = 1;
  print("So, write down the number that you want to count ");
  var num = int.parse(stdin.readLineSync().toString());

  print("====== Your watches are ready ======");

  while(i <= 10)
  {
    var mul = num * i;

     print("       $num x $i = $mul");
     i++;
  }

}