#include "Lab1.h"




//no strlen or strcmp 

void swap(int *a, int *b);
int swapMaxMin(int array[], int size);
int lastChar(char str[], char *result);


int main (void){

    int array[] = {7,5,1};

    int swappedResults = swapMaxMin(array, 3);

    printf("Swapped results = %d, %d,",array[0], array[1], array[2]);



    char stringInput[] = "Wow";
    char result; 

    char stringOutput = lastChar(stringInput, &result );

    printf("Last character = %c", stringOutput);
















return 0;
}