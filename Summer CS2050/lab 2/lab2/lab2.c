#include <stdio.h> 
#include <stdlib.h>
#include <stddef.h>

/*makeArray: 
    * This function takes a pointer to a pointer to an integer and an integer size. 
    * It allocates memory for an array of integers of size size and assigns the address of the first element to the pointer to the pointer to an integer. 
    * It returns 0 if the memory allocation was successful and -1 if it was not. 
*/
int makeArray(int **array, int size){

    if (array == NULL || size <= 0) {
        return 1;
    }

    *array = (int*)malloc(size * sizeof(int));

    if(*array == NULL){
        return 1;
    }
    return 0;


}
/*initArray: 
    * This function takes a pointer to an integer and an integer size. 
    * It initializes the array of integers pointed to by the pointer to the integer with the values 1, 2, 3, ..., size. 
*/
void initArray(int *array, int size){

    if (array == NULL || size < 0) {
        return;
    }

    for(int i = 0; i < size; i++){
        array[i] = 0;
    }


}
/*multiplyEven: 
    * This function takes a pointer to an integer, an integer size, and an integer multiplicand. 
    * It multiplies each even element of the array of integers pointed to by the pointer to the integer with the multiplicand. 
    * It returns the number of even elements in the array. 
*/
int multiplyEven(int *array, int size, int multiplicand){

if (array == NULL || size < 0) {
        return 0;
    }
    
    int count = 0;
    
    // Multiply even elements by the multiplicand
    for (int i = 0; i < size; i++) {
        if (array[i] % 2 == 0) {
            array[i] *= multiplicand;
            count++;
        }
    }
    
    return count;


}
/*freeArray: 
    * This function takes a pointer to a pointer to an integer. 
    * It frees the memory allocated for the array of integers pointed to by the pointer to the pointer to an integer. 
*/
void freeArray(int **array){

if (array == NULL || *array == NULL) {
        return;
    }
    
    free(*array);
    *array = NULL;





}
