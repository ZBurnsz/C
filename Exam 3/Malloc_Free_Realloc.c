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

printf("Allocated Memory: ");
for (int i = 0; i < n; ++i){
	printf("%d, ", (ptr + i));


}
//realloc function
n = 6;

ptr = realloc(ptr, n * sizeof(int));



printf("Newly Allocated Memory \n");

for (int i = 0; i < n; ++i){
	printf("%d, ", (ptr + i));

}

free(ptr);

return 0;
}
