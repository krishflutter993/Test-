#include <stdio.h>

struct details
{
    int id;
    double salary;
} d1;

int main()
{
    printf("enter id:");
    scanf("%d", &d1.id);

    printf("enter salary");
    scanf("%lf ", &d1.salary);

    printf("\n your id is %d", d1.id);
    printf("\n your salary is %lf", d1.salary);

    return 0;
}