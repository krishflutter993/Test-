#include<stdio.h>
#include<conio.h>
void main()
{
    char alpha;
    
    printf("enter your charector:");
    scanf("%c",&alpha);
    
    switch(alpha)
    {
        case'A': printf("A for Apple ");
        break;
    
        case'B': printf("B for Ball ");
        break;
        
        case'c': printf("c for car");
        break;
        
        default: printf("your charector is not valid");
        break;
    }
    
    
    getch();
}
