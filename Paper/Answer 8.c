#include<stdio.h>
#include<conio.h>


int square(int num)
{
    return num * num;
}

int main()
{
    int number, result;

    printf("Enter a number: ");
    scanf("%d", &number);

   
    result = square(number);

    printf("\n Square of %d is %d", number, result);

    return 0;
    
}
