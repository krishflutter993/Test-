void main ()
{
  List<dynamic>l1 = [12,"a",true];

  List<dynamic>l2 = [12,"a",true];

  l1.add("200");
  l1.addAll(l2);
  l1.remove(12);
  // l1.clear();

 for(var data in l1)
   {
     print(data);
   }
}