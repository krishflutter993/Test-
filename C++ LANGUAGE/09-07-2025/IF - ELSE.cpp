#include <iostream>
using namespace std;

int main()
{
    int marks;

    cout << "ENTER YOURB MARKS : ";
    cin >> marks;

    if (marks >= 70)
    {
        cout << "A Gred" << endl;
    }

    else if (marks >= 60)
    {
        cout << "B Gred" << endl;
    }

    else if (marks >= 50)
    {
        cout << "C Gred" << endl;
    }

    else if (marks >= 40)
    {
        cout << "D Gred" << endl;
    }

    else
    {
        cout << "YOUR FAIL" << endl;
    }

    return 0;
}