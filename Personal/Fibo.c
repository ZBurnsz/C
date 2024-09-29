#include <stdio.h>
#include <time.h>

unsigned long long fibonacci(unsigned long long x) {
    if (x == 0) {
        return 0;
    } else if (x == 1) {
        return 1;
    } else {
        return fibonacci(x - 1) + fibonacci(x - 2);
    }
}

int main(void) {
    unsigned long long n = 1000; 

    clock_t start = clock(); 

    unsigned long long result = fibonacci(n);

    clock_t end = clock(); 

    double time_spent = (double)(end - start) / CLOCKS_PER_SEC;

    printf("Fibonacci(%llu) = %llu\n", n, result);
    printf("Calculation Time: %.2f seconds\n", time_spent);

    return 0;
}