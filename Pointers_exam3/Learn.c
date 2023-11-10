#include <stdio.h>



size_t getSize(float *ptr);



int main (void){


float array [20];

printf("The number..%d\nbytes returned %d", sizeof(array), getSize(array));



return 0;

}

size_t getSize(float *ptr){
    return sizeof(ptr);
}
