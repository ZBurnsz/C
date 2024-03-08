#include <stdio.h>

// Function declarations

int main() {

    int *b = NULL;

    int value = 10; 

    b = value; 

    int result = square(&b);

    printf("%d\n", b);


    return 0;
}
int  square (int *a){
    *a = *a * *a ;
}