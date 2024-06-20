#include "headers.h"


void *makeArray(int arraySize, int elementSize) {
    // Allocate memory for the array plus extra space to store the size
    void *array = malloc((arraySize * elementSize) + sizeof(int));
    if (array == NULL) {
        fprintf(stderr, "Memory allocation failed.\n");
        return NULL;
    }
    // Store the size of the array at the beginning
    *(int *)array = arraySize;
    // Return a pointer to the array (skipping the size)
    return (char *)array + sizeof(int);
}

int getSize(void *array) {
    // Retrieve the size stored before the array
    return *((int *)array - 1);
}

int countWithWeight(InventoryItem *items, float weight) {
    // Retrieve the size of the array using getSize
    int size = getSize(items);
    int count = 0;
    // Iterate through the array and count items with the given weight
    for (int i = 0; i < size; ++i) {
        if (items[i].weight == weight) {
            count++;
        }
    }
    return count;
}

void freeArray(void *array) {
    // Free the memory allocated to the array (including the size)
    free((char *)array - sizeof(int));
}



int main() {
    int arraySize = 5;
    int elementSize = sizeof(InventoryItem);
    
    // Create array
    InventoryItem *items = makeArray(arraySize, elementSize);
    if (items == NULL) {
        fprintf(stderr, "Failed to allocate memory for array.\n");
        return 1;
    }
    
    // Initialize items (for demonstration purposes)
    for (int i = 0; i < arraySize; ++i) {
        items[i].ID = i + 1;
        items[i].weight = (i + 1) * 0.5; // Example weights
        items[i].stockCount = i + 2;
        items[i].colors = i % 3;
    }
    
    // Get size of array
    printf("Size of array: %d\n", getSize(items));
    
    // Count items with specific weight
    float targetWeight = 2.0;
    printf("Number of items with weight %.1f: %d\n", targetWeight, countWithWeight(items, targetWeight));
    
    // Free array memory
    freeArray(items);
    
    return 0;
}
