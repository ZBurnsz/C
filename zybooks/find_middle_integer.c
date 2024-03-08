#include <stdio.h>

int main(void) {
    const int NUM_ELEMENTS = 9;
    int userValues[NUM_ELEMENTS]; // Set of data specified by the user
    int num;

    printf("Enter a series of sorted integers: ");

    int i = 0;
    while (i < NUM_ELEMENTS) {
        scanf("%d", &num);
        if (num < 0) {
            break; // Exit the loop when a negative number is encountered
        }
        userValues[i] = num;
        i++;
    }

    // Calculate and output the middle integer
    int middleIndex = i / 2;
    printf("The middle integer is: %d\n", userValues[middleIndex]);

    return 0;
}
