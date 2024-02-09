#include <stdio.h>
#include <stdlib.h>

double *createDoubleArray(int minIndex, int maxIndex, FILE *fp) {
    // Allocate memory for the double array
    double *array = malloc((maxIndex - minIndex + 1) * sizeof(double));
    if (array == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        exit(EXIT_FAILURE);
    }

    // Adjust the pointer to point to the first element at minIndex
    array -= minIndex;

    // Read data into the array from the file pointer
    for (int i = minIndex; i <= maxIndex; i++) {
        fscanf(fp, "%lf", &array[i]);
    }

    // Return a pointer to the adjusted array
    return array;
}

void freeDoubleArray(double *array, int minIndex) {
    // Free the allocated memory
    free(array + minIndex);
}

int main() {
    // Open the file for reading
    FILE *fp = fopen("data.txt", "w");
    if (fp == NULL) {
        perror("Error opening file");
        return EXIT_FAILURE;
    }

    // Create the double array for indices from 1 to 10
    double *weights = createDoubleArray(1, 10, fp);

    // Close the file
    fclose(fp);

    // Print the weights
    for (int i = 1; i <= 10; i++) {
        printf("Weight for index %d: %.2lf\n", i, weights[i]);
    }

    // Free the allocated memory
    freeDoubleArray(weights, 1);

    return EXIT_SUCCESS;
}