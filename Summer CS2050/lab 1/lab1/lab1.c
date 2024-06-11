#include "lab1.h"
#include <stdio.h>


/*getAverage:
This function takes an array, a size parameter, and a result parameter and calculates the average of the array.

*/
int getAverage(int array[], int size, float *result){
//checking for invalid array, size, or result
if (size <= 0 || array == NULL || result == NULL){
    fprintf(stderr, "Error: Invalid array, size, or result in getAverage\n");

    return 1;
}

int sum = 0; 
for (int i = 0; i < size; i++){
    sum += array[i];
}

*result = (float)sum / size;
return 0;
}


/*sumPositive:

This function takes an array, a size parameter, and a result parameter and calculates the sum of all positive numbers in the array.

*/
int sumPositive(int array[], int size, int *result){
//checking for invalid array, size, or result
if (size <= 0 || array == NULL || result == NULL){
    fprintf(stderr, "Error: Invalid array, size, or result in sumPositive\n");
    return 1;

}

int positivive_count = 0; 

for (int i = 0; i < size; i++){
    if (array[i] > 0){
        positivive_count += array[i];
    }


    *result = positivive_count;
    return 0;
}
}



/*sumOdd:

This function takes an array, a size parameter, and a result parameter and calculates the sum of all odd numbers in the array.

*/
int sumOdd(int array[], int size, int *result){
//checking for invalid array, size, or result
if (size <= 0 || array == NULL || result == NULL){
    fprintf(stderr, "Error: Invalid array, size, or result in sumOdd\n");
    return 1;

}
int odd_count = 0; 

for (int i = 0; i < size; i++){
    if (array[i] % 2 != 0){
        odd_count += array[i];
    }


    *result = odd_count;
    return 0;
}
}




