#include<stdio.h>
#include<conio.h>
void main()
{
   
    int sum=0,num;
    
    printf("enter any number : ");
    scanf("%d",&num);
    
    while(num>0)
    {
        int rem = num%10;
        sum+=rem;
        num=num/10;
    }
    
    printf("Sum of All Digits are : %d",sum);
    
    
    getch();
}
