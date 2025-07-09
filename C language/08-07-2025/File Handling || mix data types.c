/*Program to handle mixed data types*/

#include <stdio.h>
int main()
{
    FILE *ptr;
    int i, number;
    float balance;
    char name[30], filename[30];

    printf("Enter the file name:-");
    scanf("%s", filename);

    ptr = fopen(filename, "w");
    printf("\nEnter data\n");
    for (i = 0; i < 3; i++)
    {
        printf("\n\nEnter A/c No.:\t");
        scanf("%d", &number);
        printf("\nEnter Name:\t");
        scanf("%s", name);
        printf("\nEnter Balance:\t");
        scanf("%f", &balance);
        fprintf(ptr, "%4d%10s%6.2f", number, name, balance);
    }

    fclose(ptr);
    ptr = fopen(filename, "r");
    puts(" \n\n\tNumber\t\tName\t\tBalance");
    while (!feof(ptr))
    {
        fscanf(ptr, "%d  %s  %f", &number, name, &balance);
        printf("\t%4d \t%10s \t%6f", number, name, balance);
    }
    fclose(ptr);

    return 0;
}
