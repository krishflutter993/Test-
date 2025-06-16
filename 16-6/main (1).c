
#include<stdio.h>
#include<conio.h>
void main()
{
    
   int maths,sci,guj,hin,eng,avg,total;
   
   printf("\n Enter Marks for Maths : ");
   scanf("%d",&maths);
   
   printf("\n Enter Marks for Science : ");
   scanf("%d",&sci);
   
   printf("\n Enter Marks for Gujarati : ");
   scanf("%d",&guj);
   
   printf("\n Enter Marks for Hindi : ");
   scanf("%d",&hin);
   
   printf("\n Enter Marks for English : ");
   scanf("%d",&eng);
   
   
   
   
   total = maths+sci+guj+hin+eng;
   avg = total/5;
   
   printf("Your Percentage is %d",avg);
   
   
    
    getch();
}