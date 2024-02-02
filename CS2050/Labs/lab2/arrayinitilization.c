#include <stdio.h>
#include <stdlib.h>

// Function prototype
void initializeArrayToZero(int *arr, int size);

int main() {
    int size;

    // Get the size of the array from the user or another source
    printf("Enter the size of the array: ");
    scanf("%d", &size);

    // Allocate memory for the array dynamically
    int *array = (int *)malloc(size * sizeof(int));
    if (array == NULL) {
        perror("Error allocating memory");
        return 1;
    }

    // Initialize the array to 0
    initializeArrayToZero(array, size);

    // Display the initialized array
    printf("Initialized array to 0: ");
    for (int i = 0; i < size; i++) {
        printf("%d ", array[i]);
    }

    // Free the dynamically allocated array
    free(array);

    return 0;
}

void initializeArrayToZero(int *arr, int size) {
    for (int i = 0; i < size; i++) {
        arr[i] = 0;
    }
}
