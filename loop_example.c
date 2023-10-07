#include <stdio.h>

int main() {
    int i = 1;
    int sum = 0;

    // Iterate until the sum is greater than or equal to 10
    while (sum < 10) {
        sum += i;
        printf("%d\n", i);
        i++;
    }

    // Reset the sum and start over
    sum = 0;
    i = 1;
}
