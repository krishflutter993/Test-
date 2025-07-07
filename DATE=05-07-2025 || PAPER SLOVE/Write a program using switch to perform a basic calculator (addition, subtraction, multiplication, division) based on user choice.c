#include <stdio.h>

int main()
{
    int choice;
    float num1, num2, result;

    printf("1. Addition\n");
    printf("2. Subtraction\n");
    printf("3. Multiplication\n");
    printf("4. Division\n");
    scanf("%d", &choice);

    switch (choice)
    {
    case 1:
        printf("Enter two numbers: ");
        scanf("%f %f", &num1, &num2);
        result = num1 + num2;
        printf(" \n Result = %f", result);
        break;

    case 2:
        printf("Enter two numbers: ");
        scanf("%f %f", &num1, &num2);
        result = num1 - num2;
        printf("\n Result = %f", result);
        break;

    case 3:
        printf("Enter two numbers: ");
        scanf("%f %f", &num1, &num2);
        result = num1 * num2;
        printf("\n Result = %f", result);
        break;

    case 4:
        printf("Enter two numbers: ");
        scanf("%f %f", &num1, &num2);
        result = num1 / num2;
        printf("\n Result = %f", result);

    default:
        printf(" Please select from 1 to 4.\n");
    }

    return 0;
}
