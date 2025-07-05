#include<stdio.h>
#include<conio.h>

void main()
{
     int arr[5];

    
    printf("\n Enter 5 elements:");
    
    for (int i = 0; i < 5; i++) 
    {
        scanf("%d", &arr[i]);
    }

   
    printf("\n Elements in reverse order:");
    
    for (int i = 4; i >= 0; i--) 
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
    
    getch();
}
