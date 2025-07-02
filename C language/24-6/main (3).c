#include<stdio.h>
#include<conio.h>
void main()
{
    
    char ch;
    
    printf("Enter character");
    scanf("%c",&ch);
    
    if(ch =='A'||ch =='E'||ch =='I'||ch =='O'||ch =='U')
    {
        printf("It's a Vowel");
    }
    else
    {
         printf("It's a Consonant");
    }
    
    
    
    
    getch();
}