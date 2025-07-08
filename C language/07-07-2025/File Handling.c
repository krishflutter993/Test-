#include <stdio.h>

int main()
{
    FILE *f1;
    char ch;

    // file write
    f1 = fopen("krish", "w");
    printf("ENTER YOUR DATA : ");
    while ((ch = getchar()) != '0')

    {
        putc(ch, f1); // printf("%d",ch);
                      // getchar scanf
    }
    fclose(f1);

    // fie read
    printf(" \n read your data");
    f1 = fopen("krish", "r");
    while ((ch = getc(f1)) != EOF)
        ;
    {
        printf("%c", ch);
    }

    return 0;
}