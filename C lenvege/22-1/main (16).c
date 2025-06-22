#include<stdio.h>
#include<conio.h>
void main()
{
   int num,i;
   
   printf("Enter Number for Table: ");
   scanf("%d",&num);
   
   
   for(i=1;i<=10;i++)
   {
       printf("\n %d * %d = %d",num,i,num*i);
   }
   
    
    getch();
}

