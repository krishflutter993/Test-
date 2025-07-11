#include <iostream>
using namespace std;

class Tops
{
    // data member
public:
    int id;
    string name;
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

    cout << "YOUR ID IS :" << t1.id << endl;
    cout << "YOUR NAME IS : " << t1.name << endl;
    cout << "========================================" << endl;

    cout << "YOUR ID IS :" << t2.id << endl;
    cout << "YOUR NAME IS : " << t2.name << endl;
    cout << "========================================" << endl;

    cout << "YOUR ID IS :" << t3.id << endl;
    cout << "YOUR NAME IS : " << t3.name << endl;
    cout << "========================================" << endl;

    cout << "YOUR ID IS :" << t4.id << endl;
    cout << "YOUR NAME IS : " << t4.name << endl;

    return 0;
}
