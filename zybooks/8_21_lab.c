#include <stdio.h>
#include <stdlib.h>

void Swap(int* numPtr1, int* numPtr2) {
    numPtr1 = x;
    numPtr2 = y;
    x = numPtr2;
    numptr1 = y;
}

int main(void) {
	int* num1 = NULL;
	int* num2 = NULL;

	num1 = (int*)malloc(sizeof(int));
	num2 = (int*)malloc(sizeof(int));

	int int1;
	int int2;

	scanf("%d", &int1);
	scanf("%d", &int2);

	*num1 = int1;
	*num2 = int2;

	Swap(num1, num2);
	printf("num1 = %d, num2 = %d\n",  *num1, *num2);

	return 0;
}
