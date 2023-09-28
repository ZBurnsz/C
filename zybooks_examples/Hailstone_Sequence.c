#include <stdio.h>

int main(void)
{

    int n;

    scanf("%d", &n);
    int i = 0;

    while (n != 1) // while n is not 1 continue loop
    {
        printf("%d\t", n);
        i++; // starts a new tab space between integers

        if (i % 10 == 0)
        {
            printf("\n"); /*if i's remainder isnt 0 then you keep going on the same line
            to get to 10 integers per line*/
        }

        if (n % 2 == 0) /*if the remainder is 0 its even if not then it does the
     else statement because its odd and continues the loop*/
        {
            n = n / 2;
        }
        else
        {
            n = 3 * n + 1;
        }
    }

    printf("%d\t", n);

    return 0;
}
