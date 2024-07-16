#include "lab9.h"
#include <stdlib.h>
#include <stdio.h>






void * makeArray(int arraySize, int elementSize) 
{
    void *array = malloc(arraySize * elementSize + sizeof(int));

    if (array == NULL) {
        fprintf(stderr, "Error: Unable to allocate memory (makeArray)\n");
        return NULL;
    }

    *(int *)array = arraySize;
    return array + sizeof(int);  // Return pointer just past the size information
}


int getSize(void *array) 
{
    if (array == NULL) {
        fprintf(stderr, "Error: Array is NULL (getSize)\n");
        return -1;  
    }

    return *((int *)array - 1);  
}




int compareComputersByDiskSize(Computer *a, Computer *b) 
{
    if (a == NULL || b == NULL) {
        fprintf(stderr, "Error: Computer is NULL (compareComputersByDiskSize)\n");
        return -1;  
    }

    if (a->iDisk < b->iDisk) {
        return -1;
    } else if (a->iDisk > b->iDisk) {
        return 1;
    } else {
        return 0;
    }
}


int searchComputersByDiskSize(Computer *array, Computer *query) 
{
    if (array == NULL || query == NULL) {
        fprintf(stderr, "Error: Array or query is NULL (searchComputersByDiskSize)\n");
        return -1;  
    }

    int size = getSize(array);
    int bottom = 0;
    int top = size - 1;

    while (bottom <= top) {
        int mid = (bottom + top) / 2;
        int comparisonResult = compareComputersByDiskSize(&array[mid], query);

        if (comparisonResult == 0) {
            return mid;  
        } else if (comparisonResult < 0) {
            bottom = mid + 1;  
        } else {
            top = mid - 1; 
        }
    }

    return -1;  
}



void freeArray(void *array) 
{
    if (array == NULL) {
        fprintf(stderr, "Error: Array is NULL (freeArray)\n");
        return;
    }

    free(array - sizeof(int));  
}


