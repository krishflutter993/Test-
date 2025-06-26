
#include<stdio.h>
#include<conio.h>
void main()
{
    
    int marks[50],i,j,num,sum=0;
    float avg;
    
    printf("Enter Number of Subject :");
    scanf("%d",&num);
    
    for(i=0;i<num;i++)
    {
        printf("Enter Marks For Subject : ");
        scanf("%d",&marks[i]);
    }
    for(i=0;i<num;i++)
    {
        sum+=marks[i];
        avg = sum/num;
      
    }
     printf("\n Sum is %d",sum);
     printf("\n Percentage is %f",avg);
        
      if(avg>=35)
      {
          printf("\n You are Pass");
      }
      else
      {
          printf("\n You are Fail");
      }
       
        
    
    
    getch();
}