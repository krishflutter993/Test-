findVolume(var length, {var breadth = 2, var height = 20})
{
print("Length is $length");
print("Breadth is $breadth");
print("Height is $height");

print("Volume is ${length * breadth * height}");
}


void main()
{
  findVolume(10);
  print("");

  findVolume(10, breadth: 5, height: 30);
  print("");

  findVolume(10, height: 30, breadth: 5);
}













































