#include <stdio.h>

int main()
{
    int num, i = 1;
    int fac = 1;

    printf("\n Enter any number");
    scanf("\n %d", &num);

    while (i <= num)
    {
        fac = fac * i;
        i++;
    }
    printf("\n factorial of %d is %d", num, fac);

    return 0;
}