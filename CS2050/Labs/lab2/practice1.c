#include <stdio.h>
#include <stdlib.h>

int *makeArray(int size) {
    int *newArray = (int *)malloc(size * sizeof(int));
    if (newArray != NULL) {
        for (int i = 0; i < size; i++) {
            newArray[i] = 0;
        }
    }
    return newArray;
}

int *addressOf(int *array, int size, int element) {
    for (int i = 0; i < size; i++) {
        if (array[i] == element) {
            return &array[i];
        }
    }
    return NULL; // Element not found
}

int sliceArray(int *array, int size, int begin, int end, int **result) {
    int beginIndex = -1;
    int endIndex = -1;

    // Find the indices of begin and end elements
    for (int i = 0; i < size; i++) {
        if (array[i] == begin) {
            beginIndex = i;
        }
        if (array[i] == end) {
            endIndex = i; 
        }
    }

    // If either element is not found, return -1
    if (beginIndex == -1 || endIndex == -1) {
        return -1;
    }

    // Update the result pointer to point to the start of the new array
    *result = &array[beginIndex];

    // Return the size of the new array minus 1
    return endIndex - 1;
}

void freeArray(int **array) {
    free(*array);
    *array = NULL;
}

int main() {
    int array[] = {2, 9, 4, 3, 0, 7, 1};
    int size = sizeof(array) / sizeof(array[0]);

    int *newArray = makeArray(size);

    int *address = addressOf(array, size, 4);
    if (address != NULL) {
        printf("Address of element 4: %p\n", (void *)address);
    } else {
        printf("Element 4 not found in the array\n");
    }

    int *result;
    int newSize = sliceArray(array, size, 9, 0, &result);
    if (newSize != -1) {
        printf("Sliced array: ");
        for (int i = 0; i < newSize + 1; i++) {
            printf("%d ", result[i]);
        }
        printf("\n");
    } else {
        printf("Slice operation failed\n");
    }

    freeArray(&newArray);

    return 0;
}
