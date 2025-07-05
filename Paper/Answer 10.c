#include<stdio.h>
#include<conio.h>

void main()
{

    int choice;
    float num1, num2, result;

  
    printf("Enter two numbers: ");
    scanf("%f %f", &num1, &num2);

    
    printf("\nChoose operation:\n");
    printf("\n 1. Addition (+)");
    printf("\n 2. Subtraction (-)");
    printf("\n 3. Multiplication (*)");
    printf("\n 4. Division (/)");
    printf("Enter your choice (1-4): ");
    scanf("%d", &choice);

   
    switch (choice) 
    {
        case 1:
            result = num1 + num2;
            printf("\n Result: %f", result);
            break;
        case 2:
            result = num1 - num2;
            printf("\n Result: %f", result);
            break;
        case 3:
            result = num1 * num2;
            printf("\n Result: %f", result);
            break;
        case 4:
            if (num2 != 0)
            {
                result = num1 / num2;
                printf("\n Result: %f", result);
            } 
            else
            {
                printf("\n Error: Cannot divide by zero");
            }
            break;
        default : printf("\n Invalid choice. Please select 1 to 4");
    }
    getch();
    
}
