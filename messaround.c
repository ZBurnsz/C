#include "stdio.h"
#include "stdlib.h"

#define SIZE 100000;

int main(void){


int size = SIZE;
int *array = (int *)malloc(size * sizeof(int));

if (array == NULL){
    printf("Yo shit failed");
}


for (int i = 0; i < size; i++){
    array [i] = 0;
}

for (int i = 0; i < size; i++){
    array [i] = i + 1;
    printf("%d,   ", array[i]);

}
for (int j = 0; j < size; j++){
    array[j]= j + 1;
    printf("%d,   ", array[j]);
}

printf("\n");







    return 0; 
}