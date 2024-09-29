#include "stdio.h"
#include "stdlib.h"

#define SIZE 10

int* createArray(int size);
void printArray(int *array, int size);
int getSize(int *array);
void binarySearch(int *array, int querey);
void freeArray(int *array);


int* createArray(int size){
    int *array = malloc(sizeof(int) * (size + sizeof(int)));
    if(array) 
    {
        array[0] = size;
        return array + 1;
    }

}

int getSize(int *array){
if (!array){
    fprintf(stderr, "Array is empty\n");
    return 0; 
}    

    return array[0]; 
}

void printArray(int *array, int size){
    for (int i = 0; i < size; i++){
        printf("%d\n", array[i]);
    }
}

void binarySearch(int *array, int querey){
    if (!array){
        fprintf(stderr, "Array is empty\n");
        return; 
    }
    int min = 0, max = getSize(array);
    int mid = (min + max) / 2;


    
    while (min <= max){
        if (array[mid] == querey){
            printf("Found %d at index %d\n", querey, mid);
            return; 
        }
        else if (array[mid] < querey){
            min = mid + 1;
        }
        else{
            max = mid - 1;
        }
        mid = (min + max) / 2;
    
}
}
void freeArray(int *array){
    if(!array){
        fprintf(stderr, "Array is empty\n");
        return; 
    }
    free(array - 1);
}


int main (void){


int *array = createArray(SIZE);

for (int i = 0; i < SIZE; i++){
    array[i] = i; 
}

getSize(array);

printArray(array, SIZE);

binarySearch(array, 5);




freeArray(array);

    return 0; 

}








