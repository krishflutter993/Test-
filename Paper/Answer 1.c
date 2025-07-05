#include<stdio.h>
#include<conio.h>

void main()
{
    float num1, num2;

    
    printf("Enter first number: ");
    scanf("%f", &num1);

    printf("Enter second number: ");
    scanf("%f", &num2);

    
    printf("\n Sum = %f", num1 + num2);
    printf("\n Difference = %f", num1 - num2);
    printf("\n Multiplication = %f", num1 * num2);

    
    if(num2 != 0)
        printf("\n Division = %f", num1 / num2);
    else
        printf("\n Division not possible (denominator is 0)");

    getch();
}
