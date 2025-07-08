#include <stdio.h>

int main()
{
    FILE *f1, *f2, *f3;
    int number;
    printf("\n my file contents");
    f1 = fopen("file", "w");

    for (int i = 0; i < 5; i++)
    {
        scanf("%d", &number);

        if (number == -1)
            break;

        putw(number, f1);
    }
    fclose(f1);

    f1 = fopen("file", "r");
    f2 = fopen("ODD", "w");
    f3 = fopen("EVEN", "w");

    while ((number = getw(f1)) != EOF)
    {
        if (number % 2 == 0)
        {
            putw(number, f3);
        }

        else
        {
            putw(number, f2);
        }
    }
    fclose(f2);
    fclose(f3);
    //-------------------RED----------------------------------------------------------------
    f1 = fopen("file", "r");
    f2 = fopen("ODD", "r");
    f3 = fopen("EVEN", "r");

    printf("\n contents main file");
    while ((number = getw(f1)) != EOF)
        printf("\n %d", number);

    printf("\n contents ODD file");
    while ((number = getw(f2)) != EOF)
        printf("\n %d", number);

    printf("\n contents EVENfile");
    while ((number = getw(f3)) != EOF)
        printf("\n %d", number);

    fclose(f1);
    fclose(f2);
    fclose(f3);

    return 0;
}
