#include <stdio.h>
#include <stdlib.h>

int *createIntArray(FILE *fp, int *length) {
    // Read the number of integers from the file
    fscanf(fp, "%d", length);

    // Allocate memory for the integer array plus an additional float for the mean
    int *array = malloc((*length + 1) * sizeof(int));
    if (array == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        exit(EXIT_FAILURE);
    }

    // Read integers from the file into the array
    for (int i = 0; i < *length; i++) {
        fscanf(fp, "%d", &array[i]);
    }
    /*you could also set array[0] = (float*)(length)array++ 
    and then use array[i] = (float*)array++ to read the values into the array because array[0] is now 1 saving 
    space for mean to be added into array[0] later on */

    // Calculate mean
    float sum = 0;
    for (int i = 0; i < *length; i++) {
        sum += array[i];
    }
    float mean = sum / *length;

    // Store the mean before the array
    *((float *)(array - 1)) = mean;

    // Return a pointer to the integer array (excluding the mean float)
    return array; 
}

float getArrayMean(int *array, int length) {
    // Retrieve the mean from the array
    float mean = *((float *)(array - 1));

    return mean;
}

int main() {
    FILE *fp = fopen("input.txt", "r");
    if (fp == NULL) {
        perror("Error opening file");
        return EXIT_FAILURE;
    }

    int length;
    int *arr = createIntArray(fp, &length);
    fclose(fp);

    if (arr == NULL) {
        fprintf(stderr, "Failed to create integer array\n");
        return EXIT_FAILURE;
    }

    // Calculate and print the mean of the array
    printf("Mean of the array: %f\n", getArrayMean(arr, length));

    // Free the allocated memory
    free(arr);

    return EXIT_SUCCESS;
}
