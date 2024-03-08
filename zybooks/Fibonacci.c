#include <stdio.h>

int Fibonacci(int n)
{
    if (n < 0)
    {
        printf("not valid\n");
        return -1;
    }
    else if (n == 0)
    {
        printf("0\n");
        return 0;
    }
    else if (n == 1)
    {
        printf("1\n");
        return 1;
    }
    else
    {
        int temp1 = 0;
        int temp2 = 1;
        int temp;

        for (int i = 2; i <= n; i++)
        {
            temp = temp1 + temp2;
            temp1 = temp2;
            temp2 = temp;
        }
        return temp;
    }
}

int main(void)
{
    int startNum;
    scanf("%d", &startNum);

    printf("Fibonacci(%d) is %d", startNum, Fibonacci(startNum));

    return 0;
}
