#include "Lab1.h"



void swap(int *a, int *b){
//swap a and b values 

int temp = *a;
*a = *b; 
*b = temp;  


}




int swapMaxMin(int array[], int size){
//this will swap the minimum and maximum elements min != max if min == max return 1 otherwise 0 CALL THE SWAP FUNCTION TO DO THIS 
int max = 0;
int min = 0;

for (int i = 0; i < size;i++){
    if (array[i] > array[max]){
        int max = i;
    }
      if (array[i] < array[min]){
        int min = i;
    }
}

swap(max, min);

return 0; 
}


int lastChar(char str[], char *result){
//this function will take a null terminated string and return the last character [*x[i] - 1] 
//if empty return 1 otherwise return 0; 
if (str[0]== '\0'){
    return 1;
}


for (int i = 0; i < str[i];i++){
    *result = str[i - 1];
}
return 0;
}
