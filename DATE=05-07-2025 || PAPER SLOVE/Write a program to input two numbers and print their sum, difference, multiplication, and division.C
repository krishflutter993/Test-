#include <stdio.h>

int main()
{
    float num1, num2;

    printf("\n enter any two number");
    scanf("\n %f %f", &num1, &num2);

    printf("\n your sum is :%f", num1 + num2);
    printf("\n your difference is :%f", num1 - num2);
    printf("\n your division  is :%f", num1 / num2);

    if (num2 != 0)
    {
        printf("\n your multiplication  is :%f", num1 * num2);
    }

    else
    {
        printf(" \n sorry number is undicler ");
    }

    return 0;
}