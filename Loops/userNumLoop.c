#include <stdio.h>

int main(void) {
   int userNum;

   scanf("%d", &userNum);

   while (userNum > 1){
      userNum = userNum / 2;
      printf("%d ", userNum);
   }



   printf("\n");

   return 0;
}
