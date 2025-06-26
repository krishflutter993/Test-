
#include<stdio.h>
#include<conio.h>
void main()
{
      
      int marks[3][3]={{1,2,3},{4,5,6},{7,8,9}};
      int i,j;
      
      for(i=0;i<3;i++)
      {
          for(j=0;j<3;j++)
          {
              printf("\n [%d] [%d] = %d",i,j,marks[i][j]);
          }
          
      }
      
       
        
    
    
    getch();
}