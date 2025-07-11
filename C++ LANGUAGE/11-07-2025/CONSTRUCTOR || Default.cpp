#include <iostream>
using namespace std;

class Tops
{
    // constructor
public:
    int id;
    string name;

    Tops()
    {
        cout << "CONSTRUCTOR CALLD" << endl;
    }
};

int main()
{
    // object
    // Tops t1;
    Tops t1 = Tops();

    return 0;
}
