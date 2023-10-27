#include <stdio.h>
#include <time.h>

int main(void) {
    double mag_size = 14.0;
    clock_t start_time = clock();

    for (int i = 0; i < 14; i++) {
        double elapsed_time = (double)(clock() - start_time) / CLOCKS_PER_SEC;  // Calculate elapsed time in seconds

        if (elapsed_time >= 5.0) {
            mag_size -= 1.0;
            start_time = clock();
            printf("mag_size: %.1lf\n", mag_size);
        }

    }

    printf("mag_size reached 0.\n");
    return 0;
}
