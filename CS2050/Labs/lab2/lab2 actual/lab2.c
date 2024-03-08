#include "lab2.h"


/*
makeArray:
this function takes an int size and makess / initilizes an array of that size
*/
int * makeArray(int size){

// give memory based on the size entered 
int *array = malloc(sizeof(int)*size);

//if array works loop through and make all elements 0
if (array != NULL){
    for (int i = 0; i < size; i++){
        array[i] = 0;
    }
}
//if array doesnt work, return 1 and print the statement 6
if (array == NULL){
    printf("cannot allocate array");
    return NULL ; //fixed **

}

return array; 
}

/*
addressOf: 
this function takes an array we initialized above, along with the size of the array and a query element that looks 
through the array and prints the address of the element inside the array if found. 
*/
int * addressOf(int *array, int size, int element){
// loop through element and find if an element inside the array == element intered in the qurry and return that element address

for (int i = 0; i < size; i++){
    if (array[i] == element); 
    return &array[i];
}


return NULL;
}

/*
sliceArray: 
this function takes an array, and size int along with a beginning and end int and a result paramater that takes the beginning and end 
int and looks for those numbers inside the array, if found it starts and ends the new array at those new integers. If not found it returns -1. 
*/
int sliceArray(int *array, int size, int begin, int end, int **result){
//(newsize - 1)
//takes 2 inputs 1 start of array and 1 end of array and thats where you start and end the array using comment above 
//point to the start of the new array with the begin and end elements 
//if either boundary element isnt found return -1 

int begin_index = -1; //instead of -1 -->addressOf(array, size, begin);
int end_index = -1;  //instead of -1 --> addressOf(array, size, end);

for (int i = 0; i < size; i++){
    if (array[i] == begin){
        begin_index = i;
    }
    if (array[i] == end){
         end_index = i;

    }
    }

//if begin or end isnt found return -1 
if (begin_index == -1 || end_index == -1) {
        return -1;
    }
    
    // Calculate the size of the sliced array
    int newSize = end_index - begin_index + 1;   

    // Allocate memory for the new sliced array
    *result = malloc(sizeof(int) * newSize);  //added 


    //copy new array elements to new array
    for (int i = 0; i < newSize; i++) {  //added
        (*result)[i] = array[begin_index + i];
    }
}


/*
freeArray: 
this function takes an arrays's memory address and frees the memory of that array and sets pointer to the array to NULL. 
*/
void freeArray(int **array){

free(*array);  //removed extra * 
*array = NULL; // changed from *array == NULL 


}


