
class Emp
{
  var name;
  var salary;

  Emp(var n,var s)
  {
    // name = n;
    // salary = s;
    print("name is $n");
    print("salary is $s");
  }
// display()
// {
//   print("$salary")
// }
}
class Manager extends Emp
{
  Manager(super.n, super.s);

}
void main()
{
  //Emp e1 = Emp("a","1");
  Manager m1 = Manager("a","1");
  Manager m2 = Manager("a","1");

}
