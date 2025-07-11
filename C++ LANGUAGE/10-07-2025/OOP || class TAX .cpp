
#include <iostream>
using namespace std;

class tops
{
public:
    int id;
    string name;

    void display()
    {
        cout << "=============================" << endl;
        cout << "Your ID is: " << id << endl;
        cout << "Your name is: " << name << endl;
        cout << "=============================" << endl;
    }
};

int main()
{
    tops t1;

    cout << "Enter your ID: ";
    cin >> t1.id;

    cout << "Enter your name: ";
    cin >> t1.name;

    t1.display();

    return 0;
}
