#include <stdio.h>
#include <assert.h>
#include "lab8.h"

int main() {
    // Test pqInit and pqGetSize
    PQueue q = pqInit();
    assert(pqGetSize(q) == 0);

    // Test pqInsert and pqGetSize
    int data1 = 10;
    int data2 = 20;
    int data3 = 30;
    pqInsert(&data1, 1, q);
    pqInsert(&data2, 2, q);
    pqInsert(&data3, 3, q);
    assert(pqGetSize(q) == 3);

    // Test pqPeek
    int *peekedData = (int *)pqPeek(q);
    assert(*peekedData == 10);

    // Test pqRemoveMin and pqGetSize
    int *removedData = (int *)pqRemoveMin(q);
    assert(*removedData == 10);
    assert(pqGetSize(q) == 2);

    // Test pqFree
    pqFree(q);

    printf("All tests passed successfully!\n");

    return 0;
}