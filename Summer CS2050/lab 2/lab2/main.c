#include <stdio.h>
#include "lab2.h"
#include <stdlib.h>
int main() {
    int *array;
    int size = 10;
    
    // 1.1 makeArray
    if (makeArray(&array, size) == 0) {
        printf("Array created successfully.\n");
    } else {
        printf("Failed to create array.\n");
        return 1;
    }
    
    // 1.2 initArray
    initArray(array, size);
    
    // Print initialized array
    printf("Initialized array: ");
    for (int i = 0; i < size; i++) {
        array[i]= array[i] + 1;
        printf("%d ", array[i]);
    }
    printf("\n");
    
    // 1.3 multiplyEven
    int multiplicand = 3;
    int multipliedCount = multiplyEven(array, size, multiplicand);
    
    // Print multiplied array and count
    printf("Multiplied array: ");
    for (int i = 0; i < size; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");
    printf("Number of elements multiplied: %d\n", multipliedCount);
    
    // 1.4 freeArray
    freeArray(&array);
    
    if (array == NULL) {
        printf("Array freed successfully.\n");
    } else {
        printf("Failed to free array.\n");
    }
    
    return 0;
}