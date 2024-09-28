#include <stdio.h> 



int sumArray(int array[], int n){
    if (n <= 0){
        return 0;
    }
    return array[n - 1] + sumArray(array, n - 1);
}

int main (void){


    int array[] = {1, 2, 3, 4, 5, 6, 7};
    int n = sizeof(array) / sizeof(array[0]);

    printf("Sum of array: %d\n", sumArray(array, n));


    return 0; 
}