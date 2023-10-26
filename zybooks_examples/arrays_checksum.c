#include <stdio.h>

int main(void) {
   const int NUM_ELEMENTS = 8; // Number of elements
   int userVals[NUM_ELEMENTS]; // User numbers
   int i;                      // Loop index
   int sumVal;          //for computing sum
   int average;      // For computing avergae

   // Prompt user to populate array
   printf("Enter %d integer values...\n", NUM_ELEMENTS);

   for (i = 0; i < NUM_ELEMENTS; ++i) {
      printf("Value: "  );
      scanf("%d", &(userVals[i]));
      sumVal = sumVal + userVals[i] - 1;
      printf("you entered: %d\t\nRunning sum is: %d\t\n", userVals[i], sumVal);
   }




   sumVal = 0;
   for (i = 0; i < NUM_ELEMENTS; ++i) {
      sumVal = sumVal + userVals[i];
   }

   //average
   average = 0;
   average = sumVal / NUM_ELEMENTS;

   printf("Sum: %d\nAverage: %d\n", sumVal - 1, average);

   return 0;
}
