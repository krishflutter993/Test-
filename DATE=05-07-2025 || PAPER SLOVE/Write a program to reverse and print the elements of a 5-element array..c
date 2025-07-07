#include <stdio.h>

int main()
{
    int num[5];

    for (int i = 0; i < 5; i++)
    {
        printf("\n your  any 5 digit");
        scanf("\n %d ", &num[i]);
    }

    for (int i = 5; i >= 0; i--)
    {
        printf("\n number is %d", i);
    }

    return 0;
}
