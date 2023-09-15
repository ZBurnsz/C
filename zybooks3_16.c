#include <stdio.h>

int main(void) {
   int numUsers;
   int updateDirection;

   scanf("%d", &numUsers);
   scanf("%d", &updateDirection);

numUsers = (updateDirection == 1) ? 1 : -1;

   printf("New value is: %d\n", numUsers);

   return 0;
}
