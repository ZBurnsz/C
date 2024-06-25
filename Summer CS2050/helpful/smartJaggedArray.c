#include <stdio.h>
#include <stdlib.h>

// Function to create a smart array of integer arrays
int** createSmartArray(int rows, int* lengths) {
    int** array = (int**)malloc(rows * sizeof(int*)); // Allocate memory for row pointers

    for (int i = 0; i < rows; i++) {
        array[i] = (int*)malloc(lengths[i] * sizeof(int)); // Allocate memory for each row
        for (int j = 0; j < lengths[i]; j++) {
            array[i][j] = 0; // Initialize each element to 0
        }
    }

    return array;
}

// Function to print the smart array
void printSmartArray(int** array, int rows, int* lengths) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < lengths[i]; j++) {
            printf("%d ", array[i][j]);
        }
        printf("\n");
    }
}

// Function to free the smart array
void freeSmartArray(int** array, int rows) {
    for (int i = 0; i < rows; i++) {
        free(array[i]); // Free each row
    }
    free(array); // Free the array of row pointers
}

int main() {
    int rows = 3;
    int lengths[] = {4, 5, 6}; // Length of each row

    // Create the smart array
    int** smartArray = createSmartArray(rows, lengths);

    // Print the smart array
    printf("Smart Array:\n");
    printSmartArray(smartArray, rows, lengths);

    // Free the allocated memory
    freeSmartArray(smartArray);

    return 0;
}
