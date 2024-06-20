#include <stdio.h>
#include <stdlib.h>

// Function declaration to create a 2D jagged array for a specific row size
int* create2DArray(int cols);

int main() {
    int n = 3; // Number of rows
    int** array = (int**)malloc(n * sizeof(int*)); // Allocate memory for array of pointers (rows)

    if (array == NULL) {
        fprintf(stderr, "Memory allocation failed for array\n");
        return 1;
    }

    // Assume you have some way to get the size of each row dynamically (example sizes)
    int rowSizes[] = {4, 2, 3}; // Example row sizes for each row i

    // Allocate memory for each row using create2DArray function
    for (int i = 0; i < n; ++i) {
        array[i] = create2DArray(rowSizes[i]);
        if (array[i] == NULL) {
            fprintf(stderr, "Memory allocation failed for row %d\n", i);
            // Clean up: free previously allocated rows
            for (int j = 0; j < i; ++j) {
                free(array[j]);
            }
            free(array);
            return 1;
        }
    }

    // Use and manipulate the jagged array 'array' here

    // Free memory for each row
    for (int i = 0; i < n; ++i) {
        free(array[i]);
    }

    // Free memory for array of pointers (rows)
    free(array);

    return 0;
}

// Hypothetical function to create a 1D array (row) of specified size
int* create2DArray(int cols) {
    int* row = (int*)malloc(cols * sizeof(int));
    return row;
}
