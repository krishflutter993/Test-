#include<stdio.h>
#include<conio.h>
void main()
{
    
    int num,rev=0;
    
    printf("Enter Any Number");
    scanf("%d",&num);
    
    while(num>0)
    {
        int rem = num % 10;
        rev = (rev*10)+rem;
        num=num/10;
    }
    
    printf("Reverse Number is %d",rev);
    
    
    
    getch();
}