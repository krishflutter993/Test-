#include <iostream>
#include <cstring>
using namespace std;

int main()
{
    const char key[] = "mango";
    char buffer[50];

    do
    {
        cout << "ENTER YOUR FRUIT NAME : ";
        cin >> buffer;

    } while (strcmp(key, buffer) != 0);

    cout << "Answer is correct!!" << endl;

    return 0;
}
