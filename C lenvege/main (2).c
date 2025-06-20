#include<stdio.h>
#include<conio.h>
void main()
{
    
    int a;
    int b;
    
    
    printf("Enter Number 1");
    scanf("%d",&a);
    
    printf("Enter Number 2");
    scanf("%d",&b);
    
    if(a!= b)
    {
      printf("a and b are not same");  
    }
    else
    {
        printf("a and b are same");  
    }
    
    
    getch();
}