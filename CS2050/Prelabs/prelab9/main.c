#include <stdio.h>
#include "header.h"



void testListOperations() {
    int error;
    List list = initEmptyList(&error);
    if (error) {
        printf("Error: Failed to initialize the list.\n");
        return;
    }

    int data1 = 10;
    int data2 = 20;
    int data3 = 30;
    int data4 = 40;
    int data5 = 50;


    // Test insertHead
    insertHead(&data1, list);
    insertHead(&data2, list);
    insertHead(&data3, list);
    insertHead(&data4, list);
    insertHead(&data5, list);

    // Test getHeadObject
    int *headObject = (int *)getHeadObject(list);
    if (headObject != NULL) {
        printf("Head Object: %d\n", *headObject);
    } else {
        printf("Error: Failed to get the head object.\n");
    }

    // Test removeHead
    removeHead(list);

    // Test insertTail
    int data6 = 40;
    insertTail(&data6, list);

    // Test getTailObject
    int *tailObject = (int *)getTailObject(list);
    if (tailObject != NULL) {
        printf("Tail Object: %d\n", *tailObject);
    } else {
        printf("Error: Failed to get the tail object.\n");
    }

    // Test getLength
    int length = getLength(list);
    printf("Length: %d\n", length);

    // Test deleteList
    deleteList(list);
}

int main() {
    testListOperations();
    return 0;
}