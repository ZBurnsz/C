#include <stdio.h>

int average(int, int);

int main(void)
{
    const int NUM_ELEMENTS = 8; // Number of elements
    int userVals[NUM_ELEMENTS]; // User numbers
    int i;                      // Loop index
    int sumVal = 0;
    int average1;
    // For computing sum

    // Prompt user to populate array
    printf("Enter %d integer values...\n", NUM_ELEMENTS);

    for (i = 0; i < NUM_ELEMENTS; ++i)
    {
        printf("Value: ");
        scanf("%d", &(userVals[i]));
        if (userVals[i] > 21)
        {
            printf("value: %d is grater >= 21\n", userVals[i]);
        }
    }

    // Determine sum
    for (i = 0; i < NUM_ELEMENTS; ++i)
    {
        sumVal = sumVal + userVals[i];
    }
    average1 = average(sumVal, NUM_ELEMENTS);
    printf("Sum: %d Avg: %d\n", sumVal, average1);

    return 0;
}

int average(int sumVal, int NUM_ELEMENTS)
{
    int average = sumVal / NUM_ELEMENTS;
    return average;
}
