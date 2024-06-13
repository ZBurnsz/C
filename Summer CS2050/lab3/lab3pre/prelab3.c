#include "lab3.h"


void * createArray(int size , int datatype);
int getArraySize(void *array);
void freeArray(void *array);

int main (void){



    return 0; 
}


void * createArray(int size , int datatype)
{
void *array = malloc(sizeof(int) * size + sizeof(int));

if (array == NULL)
{
    return NULL;


}

*((int*)array) = size;

return (void*)((int*)array + 1);

}

int getArraySize(void *array)
{

return *((int*)array - 1);

}
void freeArray(void *array){

free((int*)array - 1);


}