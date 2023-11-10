#include <stdio.h>

int main(void) {
   int userValues[20];   // List of integers from input
   int numValues;

   scanf("%d", &numValues);

   for (int i = 0; i < numValues; i++) {
      scanf("%d", &userValues[i]);
   }

   if (numValues > 1){
      int last = userValues[numValues - 1];
      for (int i = numValues - 1; i > 0; i--){
       userValues[i] = userValues[i - 1];
      }
      userValues[0] = last;
}
for (int i = 0; i < numValues; i++){
   printf("%d ", userValues[i]);
}

printf("\n");

   return 0;
}
