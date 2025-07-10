#include <iostream>
using namespace std;

int main()
{
    int a, b;

    cout << "Enter number a: ";
    cin >> a;

    cout << "Enter number b: ";
    cin >> b;

    // Logical AND
    if (a > 0 && b > 0)
    {
        cout << "your numbers are positive." << endl;
    }

    // Logical OR
    if (a > 0 || b > 0)
    {
        cout << " least  number is positive." << endl;
    }

    // Logical NOT
    if (!(a > 0))
    {
        cout << "it is not positive." << endl;
    }

    return 0;
}
