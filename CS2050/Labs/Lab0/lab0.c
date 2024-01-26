#include "lab0.h"
#include <stdio.h>



 int countOccurrences(int numbers, int array[], int query){
    int counter = 0;

    for (int i = 0; i <= numbers; ++i){
        if (array[i] == query){
            ++counter;
        }
    }

    return counter; 
 }

