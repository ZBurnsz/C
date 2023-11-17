#include <stdio.h>
#include <stdlib.h>



int main (void){


int n = 4;
int* ptr;

ptr = (int*) malloc(n * sizeof(int));

if (ptr == NULL){
	printf("Memory Cannot be allocated");
	return 0;

}

printf("Enter input Values: ");
for (int i = 0; i < n; ++i){
	scanf("%d", ptr + i);

}
printf("input Values:\n");
for (int i = 0; i < n; ++i){
printf("%d, ", *(ptr + i)); //value address
}

free(ptr);

return 0;
}
