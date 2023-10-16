#include <stdio.h>
#include <stdlib.h>
#include <time.h>


int guess_a_number();

int main() {
    int num1;
    int num2;

    srand(time(NULL));

    num2 = guess_a_number();

    printf("Enter a number between 1 and 10: ");
    scanf("%d", &num1);

    if (num1 == num2) {
        printf("Congrats, you guessed the number!\n");
    }
    else if (num1 > num2) {
        printf("You guessed too high. Try again next time.\n");
    }
    else {
        printf("You guessed too low. Try again next time.\n");
    }

    printf("The number was: %d \n", num2);

    return 0;
}

int guess_a_number() {
    int num2 = rand() % 11;
    return num2;
}
