#include <stdio.h>

int main()
{
    int num;

    printf("\n enter any number");
    scanf("%d", &num);

    if (num % 2 == 0)
    {
        printf("\n your number is even : %d ", num);
    }

    else
    {
        printf("\n your number is odd : %d ", num);
    }

    return 0;
}