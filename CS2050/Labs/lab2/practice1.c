#include <stdio.h>
#include <stdlib.h>

// Function to create a new integer array
int makeArray(int** array, int size) {
    // Check if the array pointer is NULL
    if (array == NULL) {
        return 1; // Return 1 for failure
    }

    // Allocate memory for the new array
    *array = (int*)malloc(size * sizeof(int));

    // Check if memory allocation was successful
    if (*array == NULL) {
        return 1; // Return 1 for failure
    }

    return 0; // Return 0 for success
}

// Function to initialize each index in the array to 0
void initArray(int* array, int size) {
    // Check if the array pointer is NULL
    if (array == NULL) {
        return;
    }

    // Initialize each index to 0
    for (int i = 0; i < size; i++) {
        array[i] = 0;
    }
}

// Function to multiply odd elements of the array by a multiplicand
int multiplyOdd(int* array, int size, int multiplicand) {
    // Check if the array pointer is NULL
    if (array == NULL) {
        return 0;
    }

    int count = 0; // Counter for the number of elements multiplied

    // Multiply odd elements by the multiplicand
    for (int i = 0; i < size; i++) {
        if (array[i] % 2 != 0) { // Check if the element is odd
            array[i] *= multiplicand;
            count++;
        }
    }

    return count; // Return the number of elements multiplied
}

// Function to free memory allocated to the array
void freeArray(int** array) {
    // Check if the array pointer is NULL
    if (array == NULL || *array == NULL) {
        return;
    }

    // Free the allocated memory
    free(*array);

    // Set the original pointer to NULL
    *array = NULL;
}

int main() {
    // Example usage
    int* myArray = NULL;
    int size = 5;

    // Create array
    if (makeArray(&myArray, size) == 0) {
        // Initialize array
        initArray(myArray, size);

        // Multiply odd elements by 3
        int count = multiplyOdd(myArray, size, 3);
        printf("Number of elements multiplied: %d\n", count);

        // Free allocated memory
        freeArray(&myArray);
    } else {
        printf("Failed to allocate memory for the array.\n");
    }

    return 0;
}
