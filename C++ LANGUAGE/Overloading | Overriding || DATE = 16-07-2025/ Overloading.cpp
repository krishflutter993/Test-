#include <iostream>
using namespace std;

class Cal
{
public:
    int count(int a, int b)
    {
        return a * b;
    }

    int count(int a, int b, int c)
    {
        return a * b * c;
    }
};

int main()
{
    Cal c;

    cout << c.count(2, 3) << endl;
    cout << c.count(2, 3, 2) << endl;

    return 0;
}