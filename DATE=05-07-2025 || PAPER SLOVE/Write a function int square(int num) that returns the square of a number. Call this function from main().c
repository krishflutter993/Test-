#include <stdio.h>

int squre(int num)
{
    return num * num;
}

int main()
{
    int a1;

    printf("\n Enter any number");
    scanf("%d", &a1);

    printf("squer is %d", squre(a1));

    return 0;
}