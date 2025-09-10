void main()
{
  Set NumberSet = Set();

  NumberSet.add(10);
  NumberSet.add(20);
  NumberSet.add(30);
  NumberSet.add(40);
  NumberSet.add(10);
  NumberSet.add(50);

  print(NumberSet);

  for(var data in NumberSet)
    {
      print(data);
    }
}