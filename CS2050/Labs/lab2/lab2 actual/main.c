#include "lab2.h"



int main() {
    // Test makeArray
    int size = 7;
    int *arr = makeArray(size);
    if (arr != NULL) {
        printf("makeArray: Array created successfully.\n");
        printf("Array elements:");
        for (int i = 0; i < size; i++) {
            printf(" %d", arr[i]);
        }
        printf("\n");
    } else {
        printf("makeArray: Failed to create array.\n");
        return 1; // Exit with error
    }

    // Test addressOf
    int element = 3;
    int *addr = addressOf(arr, size, element);
    if (addr != NULL) {
        printf("addressOf: Address of %d: %p\n", element, (void *)addr);
    } else {
        printf("addressOf: Address of %d not found\n", element);
    }

    // Test sliceArray
    int begin = 9;
    int end = 0;

    // Define the original array
    int array[] = {2, 9, 4, 3, 0, 7, 1};

    // Slice the array
    int *slicedArray;
    int newSize = sliceArray(array, size, begin, end, &slicedArray);
    if (newSize != -1) {
        // Print the sliced array
        printf("slice = ");
        for (int i = 0; i < newSize; i++) {
            printf("%d", slicedArray[i]);
            if (i < newSize - 1) {
                printf(", ");
            }
        }
        printf("\n");
    } else {
        printf("sliceArray: Boundary elements not found\n");
    }

    // Free dynamically allocated memory
    free(arr);

    return 0;
}