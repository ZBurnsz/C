#include <stdio.h>
#include <stdio.h>

int fact(int n);

int main()
{

    int number;
    printf("Enter any number: ");
    scanf("%d", &number);

    if (number > 0)
    {
        int result = fact(number);
        printf("The Factorial is : %d", result);
    }
    else
    {
        printf("Enter positive value");
    }

    return 0;
}

int fact(int n)
{

    if (n == 1 || n == 0)
    {
        return 1;
    }
    else
    {
        return n * fact(n - 1);
    }
}
