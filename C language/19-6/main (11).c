#include<stdio.h>
#include<conio.h>
void main()
{
   int num;
   
   printf("\n Enter Your Number: \n Press 1 For English \n Press 2 For Hindi \n Press 3 For Gujarati");
   scanf("\n %d",&num);
   

  switch(num)
  {
     case 1:
     printf("Your Selected Language is English");
     break;
     
     case 2:
     printf("Your Selected Language is Hindi");
     break;
     
     case 3:
      printf("Your Selected Language is Gujarati");    
      break;
      
    default:printf("Your Number is not valid");
    break;
      
  }
    
    
    
    
    
    getch();
}
