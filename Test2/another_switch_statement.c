#include <stdio.h>

int main(void)
{
    char origLetter;

    scanf(" %c", &origLetter);

    switch (origLetter)
    {
    case 'A':
    case 'a':
        printf("Alpha\n");
        break;
    case 'B':
    case 'b':
        printf("Beta\n");
        break;
    default:
        printf("Unknown\n");
    }
    return 0;
}

