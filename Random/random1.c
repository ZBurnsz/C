#include <stdio.h>
#include <stdlib.h>

int* CreateArray (int size);  
int getArrayMax (int *array); 
int freeArray (int *array);
int getArraySize (int *array);

int* CreateArray (int size){
    
    if (size <= 0){
        fprintf(stderr, "Error in CreateArray: size is less than or equal to 0\n");
        return NULL; 
    }

    int* array = (int*)malloc(sizeof(int)*size) + sizeof(int);
    int sizeOfArray = size; 

    array[-1] = sizeOfArray;

    return array;

}
int getArraySize (int *array){
    if (array == NULL){
        fprintf(stderr, "Error in getArraySize: array is NULL\n");
        return 1; 
    }

    int sizeOfArray = array[-1]; 

    return sizeOfArray; 
}

int getArrayMax (int *array){

    int sizeOfArray = getArraySize(array);


    int max = 0; 

    for (int i = 0; i < sizeOfArray; i++){
        if (array[i] > max){
            max = array[i];
        }
    }

    return max; 
}




int main (void){
    int size = 10; 
    int *array = CreateArray(size);

    for (int i = 0; i < 10; i++){
        array[i] = i;
    }

    printf("Max: %d\n", getArrayMax(array));
    printf("Size of array: %d\n", getArraySize(array));


    return 0; 
}

int freeArray (int *array){
    free(array);
    return 0; 
}