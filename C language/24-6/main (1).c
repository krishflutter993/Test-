#include <stdio.h>
#include <conio.h>

void main() 
{
    int choice;
    float base, height, length, breadth, radius, area;

    
    printf("1. Area of Triangle\n");
    printf("2. Area of Rectangle\n");
    printf("3. Area of Circle\n");
    scanf("%d", &choice);

    if (choice == 1) 
    {
        printf("Enter base  the triangle: ");
        scanf("%f", &base);
        printf("Enter height  the triangle: ");
        scanf("%f", &height);
        area = 0.5 * base * height;
        printf("\n Area of Triangle = %f", area);
    }
    else if (choice == 2) 
    {
        printf("Enter length of the rectangle: ");
        scanf("%f", &length);
        printf("Enter breadth of the rectangle: ");
        scanf("%f", &breadth);
        area = length * breadth;
        printf(" \n Area of Rectangle = %f", area);
    }
    else if (choice == 3)
    {
        printf("Enter radius of the circle: ");
        scanf("%f", &radius);
        area = 3.14 * radius * radius;
        printf("\n Area of Circle = %f", area);
    }
    else 
    {
        printf("your number is not valid");
    }

    getch();
}