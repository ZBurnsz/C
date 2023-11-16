#include <stdio.h>


void SwapArrayEnds(int* num1, int iterations) {
    for (int i = 0; i < iterations - 1; ++i) {
        // Swap elements at positions i and iterations - 1 - i
        int temp = num1[i];
        num1[i] = num1[iterations - 1 - i];
        num1[iterations - 1 - i] = temp;
    }
}



int main(void) {
   const int SORT_ARR_SIZE = 4;
   int sortArray[SORT_ARR_SIZE];
   int i;
   int userNum;

   for (i = 0; i < SORT_ARR_SIZE; ++i) {
      scanf("%d", &sortArray[i]);
   }

   SwapArrayEnds(sortArray, SORT_ARR_SIZE);

   for (i = 0; i < SORT_ARR_SIZE; ++i) {
      printf("%d ", sortArray[i]);
   }
   printf("\n");

   return 0;
}
