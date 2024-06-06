#include <stdio.h>

int getarrayinfo(int n, int *array, int max, int min){

    int i; 
    max = 0; 
    min = 0; 

    for (int i = 0; i < n; i++){
        if (array[i] > max){
            max = array[i]; 
        }
        if (array[i] < min){
            min = array[i]; 
        }
    }

    int distinct = 0; 

    for (int i = 0; i < n; i++){
        for (int j = 0; j < n; j++){
            if (array[i] == array[j]){
                distinct = distinct + 1; 
            }
        }
    }

    printf("Max: %d\n", max);
    printf("Min: %d\n", min);
    printf("Distinct: %d\n", distinct);

    return 0;


}



int main (void){

int n = 5; 
int array[6] = {1, 2, 3, 4, 5, 4};
int max = 0;
int min = 0;

getarrayinfo(n, array, max, min);

return 0;


}
    
