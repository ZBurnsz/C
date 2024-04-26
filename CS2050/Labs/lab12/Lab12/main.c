#include <stdlib.h>
#include <stdio.h>
#include "sorting.h"
#include "searching.h"

int compareInts(void *a, void *b) {
    return *(int *)a - *(int *)b;
}

void print_int_array(int *array, int size) {
    printf("int[%d] = \n", size);
    for(int i = 0; i < size; ++i) {
        printf("%d%s", array[i],
            (i == (size - 1) ? "\n" : ", "));
    }
}

int main(void) {
    int size = 10; 
    int *array = malloc(sizeof(int) * size);
    int maxRandom = 10000;

    srand(255);

    if(!array) {
        fputs("Failed to allocated primary array!", stderr);
        return EXIT_FAILURE;
    }

    for(int i = 0; i < size; ++i) {
        array[i] = rand() % (maxRandom + 1);
    }

    print_int_array(array, size);

    bubbleSort(array, size, sizeof(int), compareInts);

    print_int_array(array, size);

    int test = array[(int)(size * 0.79)];

    //int test = array[(int)(size * 0.33)];
    //    int test1 = array[(int)(size * 0.49)];
      //  int test2 = array[(int)(size / 2)];
    //int test3 = array[(int)(size * 0.79)];



    int result = linearSearch(array, size, sizeof(int), &test, compareInts);
    //int result1 = linearSearch(array, size, sizeof(int), &test1, compareInts);
    //int result2 = linearSearch(array, size, sizeof(int), &test2, compareInts);
   //int result3 = linearSearch(array, size, sizeof(int), &test3, compareInts);


   // printf("found %d at index [%d]\n", test, result);    
   // printf("found %d at index [%d]\n", test1, result1);
   // printf("found %d at index [%d]\n", test2, result2);
    //printf("found %d at index [%d]\n", test3, result3);
//



    free(array);
}
