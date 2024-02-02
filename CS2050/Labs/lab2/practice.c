#include <stdio.h>
#include <stdlib.h>

#define FILENAME "input.txt" // Change this to your input file name

// Function prototypes
void fillArray(int **arr, int *size);
void computeSquaresSum(int *arr, int size, int *squaresSum);
int getSumOfSquares();
int getSumOfMinMax();

int main() {
    int *array;
    int size;

    // Open the input file
    FILE *file = fopen(FILENAME, "r");
    if (file == NULL) {
        perror("Error opening file");
        return 1;
    }

    // Fill the array and compute the sum of squares
    fillArray(&array, &size);

    // Access the hidden values through get functions
    int sumOfSquares = getSumOfSquares();
    int sumOfMinMax = getSumOfMinMax();

    // Display the results
    printf("Array elements: ");
    for (int i = 0; i < size; i++) {
        printf("%d ", array[i]);
    }

    printf("\nSum of squares: %d\n", sumOfSquares);
    printf("Sum of min and max: %d\n", sumOfMinMax);

    // Free the dynamically allocated array
    free(array);

    // Close the file
    fclose(file);

    return 0;
}

void fillArray(int **arr, int *size) {
    // Open the input file
    FILE *file = fopen(FILENAME, "r");
    if (file == NULL) {
        perror("Error opening file");
        exit(1);
    }

    // Read the total number of elements from the file
    if (fscanf(file, "%d", size) != 1) {
        perror("Error reading array size from file");
        exit(1);
    }

    // Allocate memory for the array dynamically
    *arr = (int *)malloc(*size * sizeof(int));
    if (*arr == NULL) {
        perror("Error allocating memory");
        exit(1);
    }

    int sumOfMinMax = 0;
    int min = INT_MAX;
    int max = INT_MIN;

    // Fill the array and compute the sum of min and max
    for (int i = 0; i < *size; i++) {
        if (fscanf(file, "%d", &(*arr)[i]) != 1) {
            perror("Error reading array element from file");
            exit(1);
        }

        sumOfMinMax += (*arr)[i];

        if ((*arr)[i] < min) {
            min = (*arr)[i];
        }

        if ((*arr)[i] > max) {
            max = (*arr)[i];
        }
    }

    // Store the sum of min and max at the hidden location before the array
    *((*arr) - 2) = sumOfMinMax;

    // Compute and store the sum of squares
    computeSquaresSum(*arr, *size, (*arr) - 1);

    // Close the file
    fclose(file);
}

void computeSquaresSum(int *arr, int size, int *squaresSum) {
    *squaresSum = 0;
    for (int i = 0; i < size; i++) {
        *squaresSum += arr[i] * arr[i];
    }
}

int getSumOfSquares() {
    extern int *arr; // External reference to the array
    return *(arr - 1); // Return the sum of squares stored before the array
}

int getSumOfMinMax() {
    extern int *arr; // External reference to the array
    return *(arr - 2); // Return the sum of min and max stored before the array
}






























