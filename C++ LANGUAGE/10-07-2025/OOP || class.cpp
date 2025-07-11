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

    cout << "YOUR ID IS :" << t1.id << endl;
    cout << "YOUR NAME IS : " << t1.name << endl;

    return 0;
}
