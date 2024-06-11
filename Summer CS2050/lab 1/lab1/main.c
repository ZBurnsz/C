#include "lab1.h"
#include <stdio.h>

int main() {
    // Example array
    int array[] = {1, 2, 3, 4, 5};

    // Variables to store results
    float average;
    int sumPositives, sumOdds;

    // Testing getAverage function
    if (getAverage(array, 5, &average) == 0) {
        printf("Average: %.2f\n", average);
    } else {
        printf("Failed to calculate average.\n");
    }

    // Testing sumPositive function
    if (sumPositive(array, 5, &sumPositives) == 0) {
        printf("Sum of positive numbers: %d\n", sumPositives);
    } else {
        printf("Failed to calculate sum of positive numbers.\n");
    }

    // Testing sumOdd function
    if (sumOdd(array, 5, &sumOdds) == 0) {
        printf("Sum of odd numbers: %d\n", sumOdds);
    } else {
        printf("Failed to calculate sum of odd numbers.\n");
    }

    return 0;
}
