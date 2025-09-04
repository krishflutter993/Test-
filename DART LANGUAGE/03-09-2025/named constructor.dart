class Tops
{
  Tops(var name , var  surname ,  var email , var city)
  {
    print("$name");
    print("$surname");
    print("$email");
    print("$city");
  }
  Tops.a(var name , var  surname ,  var email )
  {
    print("$name");
    print("$surname");
    print("$email");

  }

}

void main()
{
  var t1 = Tops("krish","savaliya","k@gmail.com","rajkot");
  var t2 = Tops.a("jeet","xyz","j@gmail.com");

}
