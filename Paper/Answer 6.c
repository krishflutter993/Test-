#include<stdio.h>
#include<conio.h>

void main()
{
    int numbers[5];
    int sum = 0;

    
    printf("\n Enter 5 numbers:");
    
    for (int i = 0; i < 5; i++)
    {
        scanf("%d", &numbers[i]);
    }

   
    for (int i = 0; i < 5; i++)
    {
        sum += numbers[i];
    }

  
    printf("\n Sum of all numbers = %d", sum);
    
    getch();
}
