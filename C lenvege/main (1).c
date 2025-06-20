#include<stdio.h>
#include<conio.h>
void main()
{
    int age;
    
    printf("enter your age:");
    scanf("%d",&age);
    
    if(age>18)
    { 
        printf("\t eligible vote");
        
        if(age>60)
        {
            printf("\t your a under siniar citizan category");
        }
        else
        {
           printf("\t your a not  under siniar citizan category");
        }
        
    }
    
    else
    {
      printf("\t not eligible vote");
    }    
    getch();
}
