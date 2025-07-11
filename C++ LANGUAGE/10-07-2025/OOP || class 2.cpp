#include <iostream>
using namespace std;

class Tops
{
    // data member
public:
    int id;
    string name;

    void display()
    {
        cout << "================================= " << endl;
        cout << "YOUR ID IS : " << id << endl;
        cout << "YOUR NAME IS : " << name << endl;
    }
};

int main()
{
    // object
    // Tops t1;
    Tops t1 = Tops();

    t1.id = 103;
    t1.name = "raj";

    Tops t2 = Tops();

    t2.id = 102;
    t2.name = "aa";

    Tops t3 = Tops();

    t3.id = 101;
    t3.name = "bb";

    Tops t4 = Tops();

    t4.id = 104;
    t4.name = "cc";

    t1.display();
    t2.display();
    t3.display();
    t4.display();

    return 0;
}
