#include "Lab1.h"

int main(void) {

    int array[] = {7, 5, 1};

   swapMaxMin(array, 3);

    printf("Swapped results = %d, %d, %d\n", array[0], array[1], array[2]);


    char stringInput[] = "Wow";
    char result;



    int stringOutput = lastChar(stringInput, &result);




    printf("Last character = %c\n", result);

    return 0;
}
