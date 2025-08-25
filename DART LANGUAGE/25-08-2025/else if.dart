import 'dart:io';
void main()
{
  print("Enter Marks");
  var marks = int.parse(stdin.readLineSync().toString());

  if(marks>=70)
  {
    print("A GRADE");
  }

  else if(marks>=60)
  {
    print("B GRADE");
  }

  else if(marks>=50)
  {
    print("C GRADE");
  }

  else if(marks>=40)
  {
    print("D GRADE");
  }
  else
  {
    print("YOUR FALL");
  }
}