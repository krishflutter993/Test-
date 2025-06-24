#include <stdio.h>
#include <conio.h>
 void  main()
 {
      int num,count,fact=1;
      
      printf(" \n Enter a numder to find its factorial ");
      scanf("%d",&num);
      
      for(count = 1;count <= num; count++)
      {
          fact *= count;
         
      }
      printf(" \n Factorial of %d is %d ",num,fact);
      
      getch();
 }