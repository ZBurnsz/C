#include <stdio.h>
#include <string.h>

int main(void)
{
    char str[50];
    char letter;
    int counter = 0;

    printf("Enter a string: ");
    gets(str);
    printf("Enter a character to count: ");
    scanf("%c", &letter);

    for (int i = 0; i < strlen(str); i++)
    {
        if (str[i] == letter) // this is where it sees if the letter is in the string of i
        {
            counter++;
        }
    }

    printf("The character '%c' appears %d times in the string.\n", letter, counter);

    return 0;
}
