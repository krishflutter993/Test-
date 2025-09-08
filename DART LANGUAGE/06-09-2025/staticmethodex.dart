class Account
{
  var id;
  var name;
  var salary;
   static var company =  "XYZ";

  Account(var id,var name,var salary)
  {
     this.id =  id;
     this.name = name;
     this.salary = salary ;
  }

  display()
  {
    print("your id is : $id");
    print("your name is : $name");
    print("your salary is : $salary");
    print("your company is : $company");
    print("==============================");
  }

  static change()
  {
    company = "ABC";
  }
}

void main()
{
  var a1 =Account("102","krish","1234");
  var a2 =Account("101","kano","4656");

  Account.change();

  a1.display();
  a2.display();
}