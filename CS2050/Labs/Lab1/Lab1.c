#include "lab1.h"


//swap function 
void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
    //used 8_21 lab for looking at swapping with pointers 
}


//finding min and max  
int swapMaxMin(int array[], int size) {
    
    int max = 0;
    int min = 0;

    for (int i = 0; i < size; i++) {
        if (array[i] > array[max]) {
            max = i;
        }
        if (array[i] < array[min]) {
            min = i;
        }
    }
    //swapping of the min and max 
    swap(&array[min], &array[max]); 

    return 0;
}
//finding last character funciton 
int lastChar(char str[], char *result) {

    //nothing is there 
    if (str[0] == '\0') {
        return 1;
    }

    //finding end character
    int i = 0;
    while (str[i] != '\0') {
        *result = str[i];
        i++;
    }

    return 0;
}
