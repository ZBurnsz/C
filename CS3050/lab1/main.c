#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "sort.h"

// Comparison function for integers
int CompareInt(const void *a, const void *b) {
    return (*(int *)a - *(int *)b);
}

// Function to print an array of integers
void PrintArray(int *array, size_t size) {
    for (size_t i = 0; i < size; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");
}

// Test function for sorting algorithms
void RunTests(void (*sortfunc)(void *array, size_t count_elements, size_t size_element, int (*CompareFunc)(const void *, const void*)), bool fVerbose) {
    int array1[] = {5, 2, 9, 1, 5, 6};
    size_t size1 = sizeof(array1) / sizeof(array1[0]);

    if (fVerbose) {
        printf("Original array: ");
        PrintArray(array1, size1);
    }

    sortfunc(array1, size1, sizeof(int), CompareInt);

    if (fVerbose) {
        printf("Sorted array: ");
        PrintArray(array1, size1);
    }
}

int main() {
    printf("Testing Bubble Sort:\n");
    RunTests(bubblesort, true);

    printf("\nTesting Insertion Sort:\n");
    RunTests(insertionsort, true);

  

    return 0;
}