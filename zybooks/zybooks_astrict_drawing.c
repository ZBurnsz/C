#include <stdio.h>

int main(void)
{

   int height;

   printf("Enter the height--> ");
   scanf("%d", &height);

   for (int i = height; i >= 1; i--)
   {
      for (int b = 1; b <= i; b++)
      {
         printf("* ");
      }
      printf("\n");
   }
   return 0;
}
/*int b = 1;: This initializes the loop variable b to 1 at the start of each iteration of the outer loop. It ensures that the inner loop starts with b equal to 1.
b <= i;: This is the loop condition for the inner loop. The inner loop will continue to execute as long as b is less than or equal to the current value of i.
b++: This is the iteration statement for the inner loop. After each iteration of the inner loop, it increments (increases) the value of b by 1.
So, the variable b is used to control the number of asterisks printed in each row of the triangle pattern.
It starts with the value 1 and increments by 1 with each iteration of the inner loop.
This controls how many asterisks are printed on each line, depending on the value of i (which decreases from height to 1 in the outer loop).*/
