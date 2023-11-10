#include <stdio.h>

int main(void)
{

    int digit;

    scanf("%d", &digit);

    if (digit < 11 || digit > 100)
    {
        printf("Input must be 11-100\n");
    }
    else
    {
        while (1)
        {
            printf("%d ", digit);

            int firstDigit = digit / 10;
            int secondDigit = digit % 10;

            if (firstDigit == secondDigit)
            {
                break;
            }

            digit--;
        }

        printf("\n");
    }
    return 0;
}
