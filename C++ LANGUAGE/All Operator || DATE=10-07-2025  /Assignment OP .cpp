#include <iostream>
using namespace std;

int main()
{
    int a;

    cout << "Enter value of a: ";
    cin >> a;

    a += 5;
    cout << "a += 5: " << a << endl;

    a -= 4;
    cout << "a += 4: " << a << endl;

    a *= 3;
    cout << "a *= 3: " << a << endl;

    a /= 2;
    cout << "a /= 2: " << a << endl;

    a %= 3;
    cout << "a %= 3: " << a << endl;

    a = 3;
    cout << "a == 3: " << a << endl;

    return 0;
}