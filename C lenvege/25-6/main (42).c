
#include<stdio.h>
#include<conio.h>
void main()
{
        int i,j,space,num;
        
        printf("Enter Your Rows");
        scanf("%d",&num);
        
        for(i=1;i<=num;i++)
        {
            for(space=0;space<=(5-i);space++)
            {
                printf(" ");
            }
            for(j=1;j<=i;j++)
            {
                printf("%d",j);
            }
            printf("\n");
        }
        
    
    
    getch();
}