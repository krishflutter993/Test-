void main()
{
  List numberList = [100,200,300,400,500,600,700];

  print(numberList[2]);
  print("================");
  numberList[2]=800;
  print(numberList[2]);
  print("==============");
  for(int i= 0;i < numberList.length;i++)
  {
      print(numberList[i]);
  }
}