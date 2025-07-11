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

    t1.display();

    return 0;
}
