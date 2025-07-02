#include<stdio.h>
#include<conio.h>

void swap(int *a,int *b)
{
    int c= 0;
    printf("\n  Before Function call inside function a: %d , b: %d",*a,*b);
          c = *a; 
         *a = *b;  
         *b = c; 
     printf("\n After Function call inside function a: %d , b: %d",*a,*b); 
}

int main()
{
  
    int x = 5;
    int y = 7;
    printf("\n  Before Function call  x: %d , y: %d",x,y);
    swap(&x,&y);
    printf("\n  After Function call  x: %d , y: %d",x,y);
 
    return 0;
}
