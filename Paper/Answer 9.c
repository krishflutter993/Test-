#include<stdio.h>
#include<conio.h>

void main()
{

    int number;

    
    printf("Enter a number: ");
    scanf("%d", &number);

    
    if(number > 0)
    {
        printf("\n The number is positive");
        
    } 
    else if(number < 0)
    {
        printf("\n The number is negative");
    }
    else 
    {
        printf("\n The number is zero");
    }
    
    getch();
    
}
