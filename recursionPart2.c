#include <stdio.h>
#include <stdlib.h>


int sumOfarray(int array[], int n);
int findSize(int array[]);
int main (void){

int size; 
printf("enter size of array:"); 
scanf("%d", &size);

printf("Enter numbers of array up to 5: ");


int *array= (int * )malloc(size * sizeof(int)); 

for (int i = 0; i < size; i++){
    scanf("%d", &array[i]);
}


int x = sumOfarray(array, size); 
printf("%d", x);
return 0; 
}


int sumOfarray(int array[], int n){

if (n <= 0){
    return 0;
}

return array[n-1]+sumOfarray(array, n-1);


}
/*
int findSize(int array[]){
    int count; 
for (int i = 0; i < array[i]; i++){
    count = array[i]; 
}
return count; 
}
*/
