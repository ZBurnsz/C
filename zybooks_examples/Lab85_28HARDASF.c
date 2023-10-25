#include <stdio.h>
#include <string.h>
#include <ctype.h>

void CreateAcronym(char[], char[]);

int main() {
   char inputPhrase[51];
   char acronym[51];

   scanf("%[^\n]", inputPhrase); //reads until new line

   CreateAcronym(inputPhrase, acronym);

   printf("%s\n", acronym);


   return 0;
}

void CreateAcronym(char userPhrase[], char userAcronym[]){
   int letter = 0;
   int length = strlen(userPhrase);
   int word = 0;

   for (int i = 0; i < length; i++){
    char currentChar = userPhrase[i];

      if (isupper(currentChar)){
         if(!word){  //word determines start of word
            userAcronym [letter++] = currentChar; //grabs acronym
            userAcronym [letter++] = '.';   //adds period behind
   }
      word = 1; //1 = reading word
   }
   else if (islower(currentChar)){
      word = 1;
   }
   else if(currentChar == ' ' || currentChar == '\n'){
      word = 0; //0 = not reading word
   }


}
userAcronym[letter] = '\0';
}
