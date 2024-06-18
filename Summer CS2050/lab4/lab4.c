/*
CMP_SC 2050
Summer 2024
lab 4
by Zachary Burns 
June 14, 2024 
*/

#include <stdio.h>
#include "lab4.h"
#include <stdlib.h>

/*makeArray:
    *Input: arraySize - the number of elements in the array and elementSize - the size of each element
    *Output: a pointer to the allocated memory
*/
void* makeArray(int arraySize, int elementSize) {
    //error checking 
    if (arraySize <= 0 || elementSize <= 0) {
        fprintf(stderr, "Invalid input (makeArray)\n");
        return NULL;
    }
    //mem allocation 
    int* array = (int*)malloc(sizeof(int) + arraySize * elementSize);
    //more error checking
    if (array == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        return NULL;
    }
    //size at front of array 
    array[0] = arraySize; 
    return (void*)(array + 1);
}

/*getSize:
    *Input: a pointer to an array
    *Output: the size of the array

*/
int getSize(void *array){
    //error checking
    if (array == NULL){
    fprintf(stderr, "Array is NULL (getSize)\n");
    return -1; 
    }
    //function 
    int *size = ((int*)array - 1);
    return *size;

}

/*countWithColors:
    *Input: a pointer to an array of InventoryItems and colorCount - the number of colors to count
    *Output: the number of items with the specified number of colors
*/
int countWithColors(InventoryItem *items, short colorCount){
    //error checking
    if (colorCount < 0 ){
        fprintf(stderr, "invalid input(countWithColors)");
        return -1; 
    }

    if (items == NULL ){
        fprintf(stderr, "Array is NULL (countWithColors)\n");
        return -1; 
    }
    //function 
    int count = 0; 
    int size = getSize(items);

    for (int i = 0; i < size; i++){
        if (items[i].colors == colorCount){
            count++; 
        }
    }

    return count;


}


/*freeArray:
    *Input: a pointer to an array
*/
void freeArray(void *array){
    //error checking
    if (array == NULL){
    fprintf(stderr, "Array is NULL (freeArray)\n");
    return; 
    }
    //free array
    free((int*)array - 1); 

}
