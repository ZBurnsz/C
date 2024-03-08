#include "lab1.h"

int main(void) {
    //input array 
    int array[] = {7, 5, 1};


    //swapping the max and min of the input array 
    swapMaxMin(array, 3);

    printf("Swapped results = %d, %d, %d\n", array[0], array[1], array[2]);

    //input for the string to find the last charater of
    char stringInput[] = "Wow";
    char result;

    //function call to do that
    lastChar(stringInput, &result);

    printf("Last character = %c\n", result);

    return 0;
}