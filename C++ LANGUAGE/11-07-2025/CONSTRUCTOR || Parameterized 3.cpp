#include <iostream>
using namespace std;

class Tops
{
public:
    int id;
    string name;

    // Constructor
    Tops(int id, string name)
    {
        this->id = id;
        this->name = name;
    }

    void display()
    {
        cout << "ID: " << id << endl;
        cout << "Name: " << name << endl;
    }
};

int main()
{
    int id1, id2;
    string name1, name2;

    cout << "Enter ID : ";
    cin >> id1;
    cout << "Enter name: ";
    cin >> name1;

    cout << "Enter ID : ";
    cin >> id2;
    cout << "Enter name : ";
    cin >> name2;

    Tops t1 = Tops(id1, name1);
    Tops t2 = Tops(id2, name2);

    t1.display();
    t2.display();

    return 0;
}
