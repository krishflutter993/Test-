#include <stdio.h>

int main()
{
    int i,j,num;
    
    printf("Enter Any Number");
    scanf("%d",&num);//5
    
    for(i=0;i<=num;i++)
    {
        for(j=0;j<=i;j++)
        {
           printf("%c",'A'+j); 
        }
        printf("\n");
         
    }
    
    
   
    

    return 0;
}