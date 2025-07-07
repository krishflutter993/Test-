#include <stdio.h>

int main()
{
    int A, B, C;

    printf("enter any three number");
    scanf(" %d %d %d ", &A, &B, &C);

    if (A > B)
    {
        if (A > C)
        {
            printf("\n your gret is : %d", A);
        }

        else
        {
            printf("\n your gret is : %d", C);
        }
    }

    else
    {
        if (B > C)
        {
            printf("\n your gret is : %d", B);
        }

        else
        {
            printf("\n your gret is : %d", C);
        }
    }

    return 0;
}