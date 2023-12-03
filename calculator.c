#include <stdio.h>
#include <math.h>


int main (){

char operator;
double num1;
double num2;
double result;

printf("Enter what kind of problem you would like to solve (+, -, *, /,): ");
    scanf("%c", &operator);

printf("enter number 1: ");
scanf("%lf", &num1);

printf("enter number 2: ");
scanf("%lf", &num2);


switch (operator){

case '+':
    result = num1 + num2;
    printf ("\nresult: %.2lf", result);
    break;
case '-':
    result = num1 - num2;
    printf ("\nresult: %.2lf", result);
    break;
case '*':
    result = num1 * num2;
    printf ("\nresult:o %.2lf", result);
    break;
case '/':
    result = num1 / num2;
    printf ("\nresult: %.2lf", result);
    break;
default:
        printf("%c is not a valid", operator);
}


return 0;
}
