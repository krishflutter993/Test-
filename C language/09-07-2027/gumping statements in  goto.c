#include <stdio.h>

int main()
{
    int num, sum = 0, i = 0;

    printf("ENTER ANY NUMBER : ");
    scanf("%d", &num);

loop:
    i++;
    sum += i;

    if (i < num)
        goto loop;
    printf("\n sum of %d natural numbers = %d", num, sum);

    return 0;
}