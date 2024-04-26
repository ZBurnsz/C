#include "lab11.h"
#include <stdarg.h>

// https://stackoverflow.com/questions/3046889/optional-parameters-with-c-macros

// The multiple macros that you would need anyway [as per: Crazy Eddie]
#define foreach_0()						for(;;)
#define foreach_1(A)                    for(int i = 0; i < A; ++i)
#define foreach_2(A,B)                  for(int A = 0; A < B; ++A)
#define foreach_3(A,B,C)                for(int A = C; A < B; ++A)
#define foreach_4(A,B,C,D)              for(int A = C; A < B; A += D)

// The interim macro that simply strips the excess and ends up with the required macro
#define foreach_X(x,A,B,C,D,FUNC, ...)  FUNC

// The macro that the programmer uses
#define foreach(...)                    foreach_X(,##__VA_ARGS__,\
                                          foreach_4(__VA_ARGS__),\
                                          foreach_3(__VA_ARGS__),\
                                          foreach_2(__VA_ARGS__),\
                                          foreach_1(__VA_ARGS__),\
                                          foreach_0(__VA_ARGS__)\
                                         )

// print format to stderr, prefiexed with "ERROR: " and with ending newline
int verrf(const char *format, ...) {
    va_list args;
    va_start(args, format);

    fputs("ERROR: ", stderr);
    int i = vfprintf(stderr, format, args);
    fputs("\n", stderr);

    va_end(args);
    return i;
}

int main() {
    int size = 10;
    Car data[] = {
        {8, 45.51, 12},
        {3, 45.57, 99},
        {0, 45.50, 26},
        {6, 45.52, 88},
        {2, 45.59, 27},
        {9, 45.56, 35},
        {5, 45.53, 47},
        {1, 45.58, 55},
        {4, 45.55, 98},
        {7, 45.54, 38}
    };

    puts("----------------RUNNING TESTS----------------");

    Database *db = makeDatabase(data, size);

    printSKU_Sorted(db);
    printPriceSorted(db);

    foreach(size) {
        unsigned long long int result = getPN_FromSKU(db, data[i].SKU);
        if(result != data[i].OEM_PN) {
            verrf("getPN_FromSKU returned %llu for %d, expected %llu",
                result, data[i].SKU, data[i].OEM_PN);
        }
    }

    foreach(size) {
        signed int result = getSKU_FromPrice(db, data[i].price);
        if(result != data[i].SKU) {
            verrf("getSKU_FromPrice returned %d for %.2lf, expected %d",
                result, data[i].price, data[i].SKU);
        }
    }

    puts("----------------CECKING EDGES----------------");
    if(getPN_FromSKU(db, -1) != -1) {
        verrf("Northeast edge-case failed");
    }

    if(getPN_FromSKU(db, 10) != -1) {
        verrf("Northwest edge-case failed");
    }

    if(getSKU_FromPrice(db, 45.49) != -1) {
        verrf("Southeast edge-case failed");
    }

    if(getSKU_FromPrice(db, 45.6) != -1) {
        verrf("Southwest edge-case failed");
    }

    puts("----------------FREEING ARRAY----------------");
    destroy(db);
}

