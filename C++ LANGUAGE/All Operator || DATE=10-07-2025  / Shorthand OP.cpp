#include <iostream>
using namespace std;

int main()
{
    int a;

    cout << "Enter a number: ";
    cin >> a;

    cout << "Original value: " << a << endl;

    a += 5;
    cout << "After a += 5: " << a << endl;

    a -= 2;
    cout << "After a -= 2: " << a << endl;

    a *= 3;
    cout << "After a *= 3: " << a << endl;

    a /= 4;
    cout << "After a /= 4: " << a << endl;

    a %= 3;
    cout << "After a %= 3: " << a << endl;

    return 0;
}
