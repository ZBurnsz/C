#include <stdio.h>

int main(void) {
    int numValues;
    int userValues[20];  // List of integers from input

    // Read the number of values
    scanf("%d", &numValues);

    // Read the list of integers
    for (int i = 0; i < numValues; i++) {
        scanf("%d", &userValues[i]);
    }

    // Shift the elements to the right
    if (numValues > 1) {
        int lastElement = userValues[numValues - 1];
        for (int i = numValues - 1; i > 0; i--) {
            userValues[i] = userValues[i - 1];
        }
        userValues[0] = lastElement;
    }

    // Output the modified array
    for (int i = 0; i < numValues; i++) {
        printf("%d ", userValues[i]);
    }

    printf("\n");  // End with a newline

    return 0;
}
