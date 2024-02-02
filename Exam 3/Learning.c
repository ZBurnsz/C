#include <stdio.h>
#include <string.h>

#define MAX_CHAR_LENGTH 100

int main() {
    char userInput[MAX_CHAR_LENGTH];

    printf("Enter a string: ");
    fgets(userInput, MAX_CHAR_LENGTH, stdin);
    userInput(strcspn);

    printf("%s", userInput);

    return 0;
}