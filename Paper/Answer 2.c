#include<stdio.h>
#include<conio.h>

void main()
{
    int num;

    
    printf("Enter number: ");
    scanf("%d", &num);

    
    if(num % 2 == 0)
    {
        printf("\n %d is Even", num);
    } 
    else 
    {
        printf("\n %d is Odd", num);
    }
    getch();
}
