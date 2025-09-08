class RBI
{
  int rate()
  {
    return 0;
  }
}

class SBI extends RBI
{
  int rate()
  {
    return 7;
  }
}

class ICICI extends RBI
{
  int rate()
  {
    return 8;
  }
}

class AXIS extends RBI
{
  int rate()
  {
    return 9;
  }
}

void main()
{
  var r = RBI();
  print(r.rate());
   r = SBI();
  print(r.rate());
   r = ICICI();
  print(r.rate());
   r = AXIS();
  print(r.rate());

  // var s1 = SBI();
  // var r1 = ICICI();
  // var a1 = AXIS();
  //
  // print(s1.rate());
  // print(r1.rate());
  // print(a1.rate());

}