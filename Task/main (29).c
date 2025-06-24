#include<stdio.h>
#include<conio.h>
void main()
{
    int n1 = 0, n2 = 0,n3, count, num;
    
    printf("\n Enter tha num of terms to be printed");
    scanf("%d",&num);
    
    printf("\n %d \n %d",n1,n2);
    
    for(count=3;count<=num;count++)
    {
        n3=n1+n2;
        printf("%d \n",n3);
        
        n1=n2;
        n2=n3;
    }
   
    
    getch();
}