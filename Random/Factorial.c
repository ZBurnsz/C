#include <stdio.h>
#include <stdlib.h>

long double factorial(long double* x) {
    if (*x == 0) {
        return 1;
    } else {
        long double temp = *x - 1;
        long double result = *x * factorial(&temp);

        printf("Factorial of %.0Lf: %.0Lf\n", *x, result);
        return result;
    }
}

int main(void) {
    long double x = 1700; // this is the biggest the computer will print 

    printf("Factorial of %.0Lf is %.00Lf\n", x, factorial(&x));

    return 0;
}
