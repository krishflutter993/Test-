import 'dart:io';

void main() {
  print("Enter First Exam Marks:");
  var marks = int.parse(stdin.readLineSync().toString());

  if (!(marks == 35))
  {
    print("You did not score exactly 35.");
  }

  else
  {
    print("You scored exactly 35.");
  }
}


