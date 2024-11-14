#include <stdio.h>
#include <stdlib.h>
#include "hash.h"


typedef struct Chain { 
    int key; 
    void *element; 
    struct Chain *next; 
} Chain;
// Function to print an integer
void printElement(void *element) {
    if (element != NULL) {
        printf("%d\n", *(int *)element);
    }
}

int main() {
    int elementCountMax = 13; // Size of the hash table
    int elementSize = sizeof(int); // Size of the element type (int)
    
    // Allocate the hash table
    Chain **hashtable = (Chain **)AllocateChainTable(elementCountMax);
    
    // Define the hash function to use
    int (*hashFunc)(int) = DivMethod; // Change to MultMethod for the other method

    // Test data
    int elementsToInsert[] = {10, 23, 36, 14, 27, 13, 39, 26, 12, 50, 19, 43, 52, 55};
    int numElements = sizeof(elementsToInsert) / sizeof(elementsToInsert[0]);

    // Insert elements into the hash table
    for (int i = 0; i < numElements; i++) {
        printf("Inserting %d: ", elementsToInsert[i]);
        if (InsertChain(hashtable, elementSize, elementCountMax, elementsToInsert[i], &elementsToInsert[i], hashFunc) == 0) {
            printf("Success\n");
        } else {
            printf("Collision occurred\n");
        }
    }

    // Search for elements in the hash table
    printf("\nSearching for elements:\n");
    for (int i = 0; i < numElements; i++) {
        int key = elementsToInsert[i];
        printf("Searching for %d: ", key);
        void *result = SearchChain(hashtable, key, elementSize, hashFunc);
        if (result != NULL) {
            printf("Found: ");
            printElement(result);
        } else {
            printf("Not found\n");
        }
    }

    // Free the hash table
    FreeChainTable(hashtable);

    return 0;
}
