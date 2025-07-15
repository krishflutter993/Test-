#include <iostream>
using namespace std;

class A
{
public:
    void a()
    {
        cout << "A Called" << endl;
    }
};

class B
{
public:
    void b()
    {
        cout << "B Called" << endl;
    }
};

class C : public A, public B
{
public:
    void c()
    {
        cout << "C Called" << endl;
    }
};

int main()
{

    C c;

    c.b();
    c.c();
    c.a();

    return 0;
}
