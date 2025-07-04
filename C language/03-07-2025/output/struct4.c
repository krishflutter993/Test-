#include <stdio.h>

struct address
{
    char city[50];
    int zip;

} a1;

struct student
{
    char name[50];
    int age;
    struct address add;
} s1;

int main()
{
    printf("Enter name:");
    scanf("\n %s", &s1.name);

    printf("Enter age:");
    scanf("\n %d", &s1.age);

    printf("Enter city:");
    scanf("\n %s", &s1.add.city);

    printf("Enter zip:");
    scanf("\n %d", &s1.add.zip);

    printf("\n your detailas are :");

    printf("\n name is %s", s1.name);
    printf("\n age is %d", s1.age);
    printf("\n city is %s", s1.add.city);
    printf("\n zip is %s", s1.add.zip);

    return 0;
}