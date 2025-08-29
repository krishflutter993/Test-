import 'dart:io';

void main()
{
  var fas = 0 , sec = 1;

  print("Enter your fibonacci number.");
  var n = int.parse(stdin.readLineSync().toString());

  for(int i=0;i<n;i++)
  {
    print("fibonacci number : $fas");
    var tha = fas + sec;
    fas=sec;
    sec=tha;
  }

}