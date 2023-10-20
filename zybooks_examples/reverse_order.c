#include <stdio.h>

int main(void)
{
    const int NUM_ELEMENTS = 20; // Number of input integers
    int userVals[NUM_ELEMENTS];  // Array to hold the user's input integers
    int x;

    scanf("%d", &x);

    for (int i = 0; i < x; ++i)
    {
        scanf("%d", &userVals[i]);
    }

    for (int i = x - 1; i >= 0; i--)
    {
        printf("%d,", userVals[i]);
    }

    printf("\n");
    return 0;
}

