#include <stdio.h>
#include <conio.h>

int multiply(int a, int b)
{
    int result = a * b;
    printf(" \n Result inside function: %d", result);
    return result;
}

int main() 
{
    int num1 = 6;
    int num2 = 7;


    int veliyu = multiply(num1, num2);

    
    printf("\n Result inside main: %d ", veliyu);

    return 0;
}
