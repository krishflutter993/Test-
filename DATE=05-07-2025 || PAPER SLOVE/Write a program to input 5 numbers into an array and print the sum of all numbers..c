#include <stdio.h>

int main()
{
    int num[5], sum = 0;

    for (int i = 0; i < 5; i++)
    {
        printf("\n your  any 5 digit");
        scanf("\n %d ", &num[i]);
    }

    for (int i = 0; i < 5; i++)
    {
        sum += num[i];
    }

    printf("\n sum is %d", sum);

    return 0;
}
