#include "stdio.h"
#include "stdlib.h"

int main (void){

    int array [1000][1000];
    int x = 0; 
    int y = 0;



    for (int i = 0; i < 1000; i++){
        for (int j = 0; j < 1000; j++){
            array[i][j] = 0;
        }
    }
    for (int i = 0; i < 1000; i++){
        for (int j = 0; j < 1000; j++){
            array[i][j] = array[i][j] + 1;
        }
    }
    for (int i = 0; i < 1000; i++){
        for (int j = 0; j < 1000; j++){
            array[i][j] = array[i][j] + 1;
            printf("%d %d", array[i][j]);
        }
    }

     printf("Enter the x and y coordinates of the array: ");

    return 0; 
}
