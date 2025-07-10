#include <iostream>
using namespace std;

int main()
{
    int num;

    cout << "ENTER YOUR CHOISH";
    cin >> num;

    switch (num)
    {
    case 1:
        cout << "your num is 2" << endl;
        break;

    case 2:
        cout << "your num is 2" << endl;
        break;

    case 3:
        cout << "your num is 3" << endl;
        break;

    default:
        cout << "your num is not valid" << endl;
        break;
    }

    return 0;
}
