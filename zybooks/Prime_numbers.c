#include <stdio.h>

int main(void)
{

    int N;
    int isPrime = 1;

    scanf("%d", &N);

    if (N <= 1)
    {
        isPrime = 0;
    }
    else
    {
        for (int i = 2; i <= N / 2; i++)
        {
            if (N % i == 0)
            {
                isPrime = 0;
                break;
            }
        }
    }

    printf("Enter the number to check prime:%d\n", N);

    if (isPrime)
    {
        printf("Number is prime");
    }
    else
    {
        printf("Number is not prime");
    }

    return 0;
}
