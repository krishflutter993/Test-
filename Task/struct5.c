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

} s[50];

int main()
{
    int n;

    printf("enter total number of student");
    scanf("%d", &n);

    for (int i = 0; i < n; i++)
    {

        printf("Enter name :");
        scanf("%s", s[i].name);

        printf("Enter age :");
        scanf("%d", s[i].age);

        printf("Enter city :");
        scanf("%s", s[i].add.city);

        printf("Enter zip :");
        scanf("%d", s[i].add.zip);
    }

    printf("\n all student details");

    for (int i = 0; i < n; i++)
    {
        printf("\n student %d details :", i + 1);

        printf("name : %s \n", s[i].name);
        printf("age : %d \n", s[i].age);
        printf("city : %s \n", s[i].add.city);
        printf("zip : %d \n", s[i].add.zip);
    }

    return 0;
}
