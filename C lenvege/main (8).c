
#include<stdio.h>
#include<conio.h>
void main()
{
    char week;
    
    printf("Enter Your number: ");
    scanf("%c",&week);
    
    switch(week)
    {
        case '1' :  printf("1 is  Monday");
        break;
        
        case '2' : printf("2 is Tuesday");
        break;
        
        case '3' : printf("3 is  Wednesday");
        break;
        
        case '4' : printf("4 is Thursday");
        break;
        
        case '5' : printf("5 is  Friday");
        break;
        
        case '6' : printf("6 is  Saturday");
        break;
        
        case '7' : printf("7 is  Sunday");
        break;
        
        
        default : printf("Your number is not valid");
        break;
        
        
    }
    
    getch();
}