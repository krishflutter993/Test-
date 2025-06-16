#include<stdio.h>
#include<conio.h>
void main()
{
    
    int i,p,r,n;
    
    printf("\n Enter Pri");
    scanf("%d",&p);
    printf("\n Enter Rate of Intrest");
    scanf("%d",&r);
    printf("\n Enter Years");
    scanf("%d",&n);
    
    
    i = p*r*n/100;
    
    printf("\n Intrest is %d",i);
    
    
    
    getch();
}
