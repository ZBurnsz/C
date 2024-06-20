#include <stdio.h>

int main() {

int a[5] = {1,2,3,4,5};
int b[] = {1, 2, 3,};
int NUM_LOOPS = sizeof(a) / sizeof(a[0]);


printf("Enter number of loops");

for (int i = 0; i < NUM_LOOPS; i++) {
    if (a[0]){
        a [i]= {7,8};
    }
    if (a[0]){
        a [i] = {1, 2, 3};
    }
else {
    printf("%d", a[0]);
}

}


    return 0;

}
