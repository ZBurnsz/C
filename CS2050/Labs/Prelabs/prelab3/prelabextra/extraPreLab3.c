#include "headers.h"

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

    return array;
}

void freeDoubleArray(double *array, int minIndex) {
    free(array + minIndex);
}

int main() {
    // Open the file for reading
    FILE *fp = fopen("data.txt", "r");
    if (fp == NULL) {
        perror("Error opening file");
        return EXIT_FAILURE;
    }
    //input for file min and max 
    int min, max; 
    char min_str[100], max_str[100]; 

    printf("Enter min number: ");
    fgets(min_str, sizeof(min_str), stdin); 
    min = atoi(min_str); 
    //atoi = ASCII to integer string -> int 
    printf("Enter max number: ");
    fgets(max_str, sizeof(max_str), stdin); 
    max = atoi(max_str);

    double *weights = createDoubleArray(min, max, fp);

    fclose(fp);

    for (int i = 1; i <= 10; i++) {
        printf("Weight for index %d: %.2lf\n", i, weights[i]);
    }

    freeDoubleArray(weights, 1);

    return EXIT_SUCCESS;
}
