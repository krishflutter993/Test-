#include<stdio.h>
#include<conio.h>

void main()
{
    int num, i = 1;
    int fac = 1;

    
    printf("Enter a number: ");
    scanf("%d", &num);

    

        while(i <= num)
        {
            fac = fac * i;
            i++;
        }
        printf("\n Factorial of %d is %d", num, fac);
    }

    
    
    getch();
}
