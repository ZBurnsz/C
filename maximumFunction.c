#include <stdio.h>

int main(void)
{

    int number1;
    int number2;
    int number3;

    printf("Enter 3 integers: ");
    scanf("%d%d%d", &number1, &number2, &number3);

    printf("Maximum is: %d\n", maximum(number1, number2, number3));
    return 0;
}

int maximum(int x, int y, int z)
{
    int max = x;

    if (y > max)
    {
        max = y;
    }
    if (z > max)
    {
        max = z;
    }
    // this will take the maximum of 3 inputed #'s
    return max;
}
