void main()
{
  Map<String, int> countryDialingCode=
  { // Method 1: Using Literal
    "USA" : 1,
    "india" : 91,
    "PAKISTAN": 92
  };

   for(var data in countryDialingCode.entries)
     {
       print(data);
     }
print("============================================================");

   Map<String, String> fruits =  Map();     // Method 2: Using Constructor
   fruits["Apple"] =  "red";
   fruits["banana"] =  "yellow";
   fruits["guava"] = "green";

   print(fruits.containsKey("Apple"));
   // returns true if the KEY is present in Map
   fruits.update("Apple",(value) => "pink" ); // Update the VALUE for the given KEY
   fruits.remove("Apple"); // removes KEY and it's VALUE and returns the VALUE
   fruits.isEmpty;// returns true if the Map is empty
   fruits.length; // returns number of elements in Map
   // fruits.clear();// Deletes all elements

  for(String Key in fruits.keys)
    { // Print all keys
      print(Key);
    }
}


