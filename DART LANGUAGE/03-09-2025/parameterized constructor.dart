class Tops
{
  var n;
  var e;
  Tops(var name , var email)
  {
     n = name;
     e = email;
  }

  display()
  {
    print("$n and $e");
  }
}

void main()
{
  var t1 = Tops("krish","k@gmail.com");
  var t2 = Tops("jeet","j@gmail.com");

  // print(t1.n);
  // print(t1.e);
  // print(t2.n);
  // print(t2.e);

  t1.display();
  t2.display();
}
