#include "Lab1.h"

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

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

    swap(&array[min], &array[max]); 

    return 0;
}

int lastChar(char str[], char *result) {

    if (str[0] == '\0') {
        return 1;
    }

    int i = 0;
    while (str[i] != '\0') {
        *result = str[i];
        i++;
    }

    return 0;
}
