#include <stdio.h>

int main(void)
{

    char operator;
    int num1;
    int num2;
    double result;

    scanf("%c", &operator);

    switch (operator)
    {

    case '+':
        printf("Choose an operator(+, -, *, /) to perform the operation in C Calculator:+\n");
        printf("You have selected: Addition\n");
        break;
    case '-':
        printf("Choose an operator(+, -, *, /) to perform the operation in C Calculator:-\n");
        printf("You have selected: Subtraction\n");
        break;
    case '*':
        printf("Choose an operator(+, -, *, /) to perform the operation in C Calculator:*\n");
        printf("You have selected: Multiplication\n");
        break;
    case '/':
        printf("Choose an operator(+, -, *, /) to perform the operation in C Calculator:/\n");
        printf("You have selected: Division\n");
        break;
    default:
        printf("Not a valid operator: %c\n", operator);
    }

    scanf("%d", &num1);
    printf("Enter the first number: %d\n", num1);

    scanf("%d", &num2);
    printf("Enter the second number: %d\n", num2);

    switch (operator)
    {

    case '+':
        result = num1 + num2;
        printf("Addition of %d and %d is: %.2lf\n", num1, num2, result);
        break;
    case '-':
        result = num1 - num2;
        printf("Subtraction of %d and %d is: %.2lf\n", num1, num2, result);
        break;
    case '*':
        result = num1 * num2;
        printf("Multiplication of %d and %d is: %.2lf\n", num1, num2, result);
        break;
    case '/':
        result = num1 / num2;
        printf("Division of %d and %d is: %.2lf\n", num1, num2, result);
        break;

    default:
        printf("Not a valid operator\n");
    }
    return 0;
}
