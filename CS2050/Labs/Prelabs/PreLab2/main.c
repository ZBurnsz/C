#include "headers.h"


int main() {
    FILE *file = fopen("float_values.txt", "w+");
    if (file == NULL) {
        fprintf(stderr, "Error: Could not open the file.\n");
        return 1;
    }

    int length;
    float *floatArray = readFloatFileIntoArray(file, &length);

    if (floatArray != NULL) {
        // Process the float array as needed

        // Free the dynamically allocated memory
        freeFloatArray(&floatArray);
    }

    fclose(file);

    return 0;
}



float *readFloatFileIntoArray(FILE *fptr, int *length) {
    // Read the number of floats from the file
    if (fscanf(fptr, "%d", length) == 0 || *length <= 0) {
        fprintf(stderr, "Error: Invalid or missing length in the file.\n");
        return NULL;
    }

    // Allocate memory for the float array
    float *floatArray = (float *)malloc(*length * sizeof(float));
    if (floatArray == NULL) {
        fprintf(stderr, "Error: Memory allocation failed.\n");
        return NULL;
    }

    // Read float values from the file into the array
    for (int i = 0; i < *length; ++i) {
        if (fscanf(fptr, "%f", &floatArray[i]) != 1) {
            fprintf(stderr, "Error: Failed to read float values from the file.\n");
            free(floatArray);
            return NULL;
        }
    }

    return floatArray;
}


void freeFloatArray(float **floatArrayPtr) {
    // Check if the input pointer is not NULL
    if (floatArrayPtr != NULL) {
        // Free the memory and set the user's pointer to NULL
        free(*floatArrayPtr);
        *floatArrayPtr = NULL;
    }
}
