#include <stdio.h>
#include <string.h>

int main(void) {

   char s[100];      // buffer for string input
   char result[6];   // buffer for string output

   fgets(s, sizeof(s), stdin);

   int length = strlen(s);

   if (length < 5){
      printf("Postfix: %s", s);
}
   else {
      for (int i = 0; i < 5; i++){
         result[i] = s[length - 6 + i]; //i had to use - 5 in the actual lab
      }
      result[6] = '\0';

   printf("Postfix: %s\n", result);

}

   return 0;

}
