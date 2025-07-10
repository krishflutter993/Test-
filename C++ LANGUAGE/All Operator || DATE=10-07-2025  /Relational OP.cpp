#include <iostream>
using namespace std;

int main()
{
    int a, b;

    cout << "Enter first number (a): ";
    cin >> a;

    cout << "Enter second number (b): ";
    cin >> b;

    cout << "a < b : " << (a < b) << endl;
    cout << "a > b : " << (a > b) << endl;
    cout << "a <= b : " << (a <= b) << endl;
    cout << "a >= b : " << (a >= b) << endl;
    cout << "a == b : " << (a == b) << endl;
    cout << "a != b : " << (a != b) << endl;

    return 0;
}
