#include <stdio.h>
#include <stdlib.h>




int* twoSum(int* array, int size, int target, int* returnSize){

    int* result = (int*)malloc(2 * sizeof(int));

    *returnSize = 2;

    for (int i = 0; i < size; i++){
        for (int j = i + 1; j < size; j++){
            if (array[i] + array[j] == target){
                result[0] = array[i]; 
                result[1] = array[j]; 
                return result;
                
            }
        }
    }
    return NULL; 
    }


int main (void){

int array[4] = {2, 7, 11, 15};
int target = 9;

int returnSize = 0;
int* result = twoSum(array, 4, target, &returnSize);

printf("The two indices are: %d, %d\n", result[0], result[1]);


}