#include "headers.h"



void * createArray(int, int){

    void * array = malloc(sizeof(int) * size);
    return array;


}

int getArraySize(void*){




    int size = sizeof(*array) / sizeof(int);
    return size;



}

void freeArray (void*){

free(*array);
*array = NULL;

}