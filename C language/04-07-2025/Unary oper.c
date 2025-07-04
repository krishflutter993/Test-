#include <stdio.h>

int main()
{
    int a = 7, b;

    a++;
    printf("\n %d ", a);

    ++a;
    printf("\n %d ", a);

    b = a++;
    printf("\n %d ", a);
    printf("\n %d ", b);

    b = ++a;
    printf("\n %d ", a);
    printf("\n  %d ", b);

    b++;
    printf("\n %d ", b);

    return 0;
}