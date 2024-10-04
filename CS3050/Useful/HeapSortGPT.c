/*
CMP_SC 3050
Summer 2024
lab 2 - Heap Sort 
by Zachary Burns 
September 30, 2024
*/




//! Look at lab 12 from 2050




#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>



// Provided swap function to swap two items in memory
void Swap(void *pItem1, void *pItem2, size_t itemsize) {
    void *temp = malloc(itemsize);
    if (temp == NULL) {
        exit(EXIT_FAILURE);  // Handle memory allocation failure
    }
    memcpy(temp, pItem1, itemsize);
    memcpy(pItem1, pItem2, itemsize);
    memcpy(pItem2, temp, itemsize);
    free(temp);
}

// Provided copy function to copy an item from source to destination
void Copy(void *pDestItem, void *pSourceItem, size_t itemsize) {
    memcpy(pDestItem, pSourceItem, itemsize);
}







// Function to heapify a subtree rooted at index i in an array of n elements
void heapify(void *array, size_t nitems, size_t size, int i, int (*CompareFunc)(const void *, const void *)) {
    int largest = i; // Initialize largest as root
    int left = 2 * i + 1; // Left child
    int right = 2 * i + 2; // Right child

    // Convert the base pointer of the array to char* to perform pointer arithmetic
    char *base = (char *)array;

    // Check if the left child exists and is larger than the root
    if (left < nitems && CompareFunc(base + left * size, base + largest * size) > 0) {
        largest = left;
    }

    // Check if the right child exists and is larger than the largest so far
    if (right < nitems && CompareFunc(base + right * size, base + largest * size) > 0) {
        largest = right;
    }

    // If the largest is not the root, swap it and recursively heapify the affected subtree
    if (largest != i) {
        Swap(base + i * size, base + largest * size, size);
        heapify(array, nitems, size, largest, CompareFunc);
    }
}

// Function to build a max heap
void buildMaxHeap(void *array, size_t nitems, size_t size, int (*CompareFunc)(const void *, const void *)) {
    for (int i = (int)nitems / 2 - 1; i >= 0; i--) {
        heapify(array, nitems, size, i, CompareFunc);
    }
}

// Heapsort function
void heapsort(void *array, size_t nitems, size_t size, int (*CompareFunc)(const void *, const void *)) {
    // Step 1: Build a max heap
    buildMaxHeap(array, nitems, size, CompareFunc);

    // Step 2: Extract elements from heap one by one
    for (size_t i = nitems - 1; i > 0; i--) {
        // Move the current root (largest) to the end
        Swap((char *)array, (char *)array + i * size, size);

        // Call heapify on the reduced heap
        heapify(array, i, size, 0, CompareFunc);
    }
}


//! main function 



// Declare the functions
void heapsort(void *array, size_t nitems, size_t size, int (*CompareFunc)(const void *, const void *));
void Swap(void *pItem1, void *pItem2, size_t itemsize);
void Copy(void *pDestItem, void *pSourceItem, size_t itemsize);

// Comparison function for integers
int CompareInts(const void *a, const void *b) {
    int arg1 = *(const int *)a;
    int arg2 = *(const int *)b;
    return (arg1 > arg2) - (arg1 < arg2);  // Returns -1, 0, or 1
}

// Comparison function for strings (char *)
int CompareStrings(const void *a, const void *b) {
    return strcmp(*(const char **)a, *(const char **)b);  // Returns <0, 0, >0
}

int main() {
    // Example: Sorting an array of integers
    int int_array[] = {42, 23, 17, 13, 8, 3, 7};
    size_t n_ints = sizeof(int_array) / sizeof(int_array[0]);

    printf("Original integer array:\n");
    for (size_t i = 0; i < n_ints; i++) {
        printf("%d ", int_array[i]);
    }
    printf("\n");

    heapsort(int_array, n_ints, sizeof(int), CompareInts);

    printf("Sorted integer array:\n");
    for (size_t i = 0; i < n_ints; i++) {
        printf("%d ", int_array[i]);
    }
    printf("\n\n");

    // Example: Sorting an array of strings
    const char *string_array[] = {"banana", "apple", "grape", "orange", "kiwi"};
    size_t n_strings = sizeof(string_array) / sizeof(string_array[0]);

    printf("Original string array:\n");
    for (size_t i = 0; i < n_strings; i++) {
        printf("%s ", string_array[i]);
    }
    printf("\n");

    heapsort(string_array, n_strings, sizeof(char *), CompareStrings);

    printf("Sorted string array:\n");
    for (size_t i = 0; i < n_strings; i++) {
        printf("%s ", string_array[i]);
    }
    printf("\n");

    return 0;
}
