
class Emp
{
  var n;
  var s;
  Emp(var n,var s)
  {
    this.n = n;
    this.s = s;

  }
  display()
  {
    print("your name is $n");
    print("your salary is $s");
  }
}
void main()
{
  Emp e1 = Emp("a", "1");
  e1.display();
}
