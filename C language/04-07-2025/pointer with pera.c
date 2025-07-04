#include <stdio.h>

void tops(int *num)
{
    *num *= 2; // num = num * 2;
    printf("\n %d", *num);
}

int main()
{
    int y = 10;
    tops(&y);
    printf("\n %d", y);

    return 0;
}