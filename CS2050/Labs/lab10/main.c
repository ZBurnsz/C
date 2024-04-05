#include "lab10.h"

int main (void){

Queue *q = newQueue();


int num1 = 1; 
int num2 = 2; 
int num3 = 3;
int num4 = 4; 
int num5 = 5; 

enQueue(q, &num1);
enQueue(q, &num2);
enQueue(q, &num3);
enQueue(q, &num4);
enQueue(q, &num5);




int *front = (int *)peek(q);
printf("item at the front = %d\n", *front);


int *gone = (int *)deQueue(q);
printf("getting ride of first number = %d\n", *gone);

int size = getSize(q);
printf("total size = %d\n", size);

int *front1 = (int *)peek(q);
printf("next in line = %d\n", *front1);

destroy (q);





return 0; 
}
