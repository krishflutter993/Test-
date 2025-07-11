#include <iostream>
using namespace std;

class Tops
{
    // constructor
public:
    int i;
    string n;

    Tops(int id, string name)
    {
        i = id;
        n = name;
    }

    void display()
    {
        cout << i << endl;
        cout << n << endl;
    }
};

int main()
{
    // object
    // Tops t1;
    Tops t1 = Tops(1, "xyz");
    Tops t2 = Tops(2, "abc");

    t1.display();
    t2.display();

    return 0;
}
