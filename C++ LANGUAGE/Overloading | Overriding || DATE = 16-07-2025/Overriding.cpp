#include <iostream>
using namespace std;

class cal
{
public:
    int count(int a, int b)
    {
        return a * b;
    }

    int count(float c, float d)
    {
        return c * d;
    }
};

int main()
{
    cal c;

    cout << c.count(3, 2) << endl;
    cout << c.count(2, 2) << endl;

    return 0;
}