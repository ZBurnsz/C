#include <stdio.h>

int main (void){
    int integer1;
    int interger2;
    int sum;


    printf("Enter first integer\n");
    scanf("%d" , &integer1);

    printf("enter second integer\n");
    scanf("%d", &integer2);

    sum = integer1 + integer2;

    printf ("sum is %d\n" , sum);

    return 0;
}
