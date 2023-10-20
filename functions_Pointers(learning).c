#include <Stdio.h>

double square(double x)
{

    double square_root = x * x;
    return square_root;
}

int main()
{

    double x;
    double *ptr = &x; //pointer pointing to the value of X

    printf("Enter the number you want to square: ");
    scanf("%lf", &x);

    printf("Square root of %.2lf is %.2lf", *ptr, square(x));

    return 0;
}

/*

#include <stdio.h>

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

int main() {
    int x = 10;
    int y = 20;

    printf("Before swap: x = %d, y = %d\n", x, y);

    swap(&x, &y);

    printf("After swap: x = %d, y = %d\n", x, y);

    return 0;
}
*/ //pointer example from Copilot I can look at

