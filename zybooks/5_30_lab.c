#include <stdio.h>
#include <string.h>

int CalcNumCharacters(char* userString, char userChar);


int main(void) {

char userString[50];
char userChar;

scanf(" %c", &userChar);

scanf(" %s", userString);

int numLetters = CalcNumCharacters(userString, userChar);

if (numLetters == 1){
   printf("%d %c\n", numLetters, userChar);
}
else{
   printf("%d %c's\n", numLetters, userChar);
}



   return 0;
}

int CalcNumCharacters(char* userString, char userChar){
 int count = 0;

 for (int i = 0; i < strlen(userString);i++){
    if (userString[i] == userChar){
       count++;
    }
 }

   return count;
}
