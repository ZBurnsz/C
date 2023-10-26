#include <stdio.h>
#include <math.h>


double addition(double numb1, double numb2);
double subtraction(double numb1, double numb2);
double division(double numb1, double numb2);
double multiplication(double numb1, double numb2);
double squareRoot(double numb1);

int main(void)
{

char operator;
double result;
double x , y;



printf("Enter Operator (+,-,*,/,$)");
scanf("%c", &operator);

if (operator == '$')
{
    printf("Enter number 1: ");
    scanf("%lf", &x);
}
else {
printf("Enter number 1: ");
scanf("%lf", &x);

printf("Enter number 2: ");
scanf("%lf", &y);
}


switch(operator){

case '+':
result = addition(x, y);
break;

case '-':
result = subtraction(x, y);
break;

case '*':
result = multiplication(x, y);
break;

case '/':
if (y == 0){
    printf("Error");
}
else{
    double result = division(x, y);
    break;
}


case '$':
result = squareRoot(x);
break;

default:
printf("%c is not a valid operator", operator);

}
    printf("Answer = %.2lf\n", result);
    return 0;
}

double addition(double numb1, double numb2){

return (numb1 + numb2);

}
double subtraction(double numb1, double numb2){

return (numb1 - numb2);

}
double division(double numb1, double numb2){

return (numb1 / numb2);

}
double multiplication(double numb1, double numb2){

return (numb1 * numb2);
}
double squareRoot(double numb1){
    return sqrt(numb1);

}


