#include <stdio.h>

int main()
{
    int num;

    printf("\n enter any number");
    scanf("%d", &num);

    if (num > 0)
    {
        printf("\n your number is : positive");
    }

    else if (num < 0)
    {
        printf("\n your number is : negative");
    }

    else
    {
        printf("\n your number is zero not avelebal");
    }

    return 0;
}