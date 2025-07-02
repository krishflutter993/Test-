
#include<stdio.h>
#include<conio.h>
#include<string.h>
int main()
{
    char c[50]="mango";
    char c2[50];
    
    do
    {
        printf("Enter Your Fruit Name");
        scanf("%s",&c2);
    }
    while(strcmp(c,c2)!=0);
    
    printf("Answer is Correct!!");
    
    
    
 
    return 0;
}