#include<stdio.h>
#include<conio.h>
void main()
{
    char alpha;
    
    printf("Enter Your Character: ");
    scanf("%c",&alpha);
    
    switch(alpha)
    {
        case 'A' :  printf("A For Apple");
        break;
        
        case 'B' : printf("B for Ball");
        break;
        
        case 'C' : printf("C for Car");
        break;
        
        default : printf("Your Character is not valid");
        break;
        
        
    }
    
    getch();
}