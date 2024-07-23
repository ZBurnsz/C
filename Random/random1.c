#include <stdio.h>
#include <stdlib.h>

typedef struct orderedPair {
    int *first, *second; 
} orderedPair;

orderedPair addOP(orderedPair* a, orderedPair* b) {
    orderedPair result; 
    
    result.first = (int *)malloc(sizeof(int));
    result.second = (int *)malloc(sizeof(int));

    *result.first = *a->first + *b->first;
    *result.second = *a->second + *b->second;

    return result;
}

int main(void) {
    orderedPair a, b;

    a.first = (int *)malloc(sizeof(int));
    a.second = (int *)malloc(sizeof(int));
    *a.first = 1;
    *a.second = 2;

    b.first = (int *)malloc(sizeof(int));
    b.second = (int *)malloc(sizeof(int));
    *b.first = 3;
    *b.second = 4;

    orderedPair result = addOP(&a, &b);

    printf("First: %d\nSecond: %d\n", *result.first, *result.second);

    // Free allocated memory
    free(a.first);
    free(a.second);
    free(b.first);
    free(b.second);
    free(result.first);
    free(result.second);

    return 0; 
}
