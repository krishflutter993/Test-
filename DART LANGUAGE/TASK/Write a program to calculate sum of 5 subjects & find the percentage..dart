import 'dart:io';
void main() {
  var maths, sci, guj, hin, eng, avg, total;

  print("\n Enter Marks for Maths : ");
  var Maths = int.parse(stdin.readLineSync().toString());

  print("\n Enter Marks for Science : ");
  var Science = int.parse(stdin.readLineSync().toString());

  print("\n Enter Marks for Gujarati : ");
  var Gujarati = int.parse(stdin.readLineSync().toString());

  print("\n Enter Marks for Hindi : ");
  var Hindi = int.parse(stdin.readLineSync().toString());

  print("\n Enter Marks for English : ");
  var English = int.parse(stdin.readLineSync().toString());


  total = maths + sci + guj + hin + eng;
  avg = total / 5;

  print(avg);
}