#include <iostream>
using namespace std;

class Tops
{
    // constructor
public:
    int id;
    string name;

    Tops(int id, string name)
    {
        this->id = id;
        this->name = name;
    }

    void display()
    {
        cout << id << endl;
        cout << name << endl;
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
