#include <stdio.h>
#include <stdlib.h>

int create(int **matrix){

int rows = 3, cols = 4;

matrix = (int **)malloc(rows * sizeof(int *));
for (int i = 0; i < rows; i++) {
    matrix[i] = (int *)malloc(cols * sizeof(int));
    for (int j = 0; j < cols; j++) {
        matrix[i][j] = i * cols + j; // Assigning values to the 2D array
    }
}

// Printing the matrix values
for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
        printf("%d %d ", matrix[i][j]);
    }
    printf("\n");
}

// Freeing the allocated memory
for (int i = 0; i < rows; i++) {
    free(matrix[i]);
}
free(matrix);
}

void allocateArray(int **p, int size) {
    *p = (int *)malloc(size * sizeof(int));
    for (int i = 0; i < size; i++) {
        (*p)[i] = i;
    }
}

int main() {
    int *array = NULL;
    allocateArray(&array, 10);

    // Printing the array values
    for (int i = 0; i < 10; i++) {
        printf("%d ", array[i]);
    }

    free(array); // Freeing the allocated memory
    return 0;
}