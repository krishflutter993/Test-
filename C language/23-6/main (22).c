#include<stdio.h>
#include<conio.h>
void main()
{
    int num,ldigit=0,fdigit=0,ans=0;
    
    printf("Enter Any Number");
    scanf("%d",&num);

    ldigit = num % 10;       
    
    while(num > 0)
    {
        if(num>9)
        {
            num=num/10;
        }
        
        fdigit = num;
        num = num/10;
    }
    ans = fdigit+ldigit;
    printf("First and Last digit sum is %d",ans);
    
    getch();
}