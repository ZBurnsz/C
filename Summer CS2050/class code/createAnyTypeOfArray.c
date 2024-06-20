/*
This code allows you to create any type of array, double, int, float etc and store the size as an int at the beggingin of the array
from lecture 06/10/24

I actually wrote all of this for once
*/


#include <stdio.h>
#include <stdlib.h>


void* CreateArray(int size, float elementSize);  
int getArrayMax(double *array); 
void freeArray(double *array);
int getArraySize(double *array);

void* CreateArray(int size, float elementSize){
    if (size <= 0){
        fprintf(stderr, "Error in CreateArray: size is less than or equal to 0\n");
        return NULL; 
    }

    int* array = (int*)malloc(sizeof(int) + elementSize * size);
    if (array == NULL){
        fprintf(stderr, "Error in CreateArray: malloc failed\n");
        return NULL; 
    }


    *(int*)array = size;
    return (double*)((int*)array + 1);
}

int getArraySize(double *array){
    if (array == NULL){
        fprintf(stderr, "Error in getArraySize: array is NULL\n");
        return -1; 
    }

    return *(((int*)array) - 1);
}

int getArrayMax(double *array){
    int sizeOfArray = getArraySize(array);
    if (sizeOfArray <= 0) {
        fprintf(stderr, "Error in getArrayMax: invalid array size\n");
        return -1; 
    }
    double max = array[0];

    for (int i = 1; i < sizeOfArray; i++){
        if (array[i] > max){
            max = array[i];
        }
    }

    return (int)max; 
}



int main(void){
    int size = 101.01; 
    double *array = CreateArray(size, sizeof(double));
    if (array == NULL) {
        return 1; 
    }

    for (int i = 0; i < size; i++){
        array[i] = (double)i;
        printf("%f    \n", array[i] );
    }

    printf("Max: %d\n", getArrayMax(array));
    printf("Size of array: %d\n", getArraySize(array));

    freeArray(array);

    return 0; 
}


void freeArray(double *array){
    if (array != NULL) {
        free(((int*)array) - 1);
    }
}