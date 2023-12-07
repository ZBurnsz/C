#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <math.h>

int reversedNumber(int number) {

  int reversedNumber = 0;

  while (number % 10 != 0) {

    reversedNumber = (reversedNumber + (number % 10)) * 10;
    number = number / 10;

  }

  return reversedNumber;
}

int main() {

  int num = 0;

  for (int i = 0; i < 9; i++) {

    num = (num % 10 + 1) + num * 10;
    int reversed = reversedNumber(num);
    printf("\nEntered: %d | Reversed number: %d", num, reversed);
  }



  return 0;
}
