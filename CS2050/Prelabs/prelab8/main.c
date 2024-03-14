#include "headers.h"

int main() {
    List *head;
    int errorCode;
    head = initList(&errorCode);
    if (errorCode == 1) {
        printf("Insufficient memory to initialize the list.\n");
        return 1;
    }
    for (int i = 0; i < 100; i++) {
        head = insertAtHead(i, head, &errorCode);
        if (errorCode == 1) {
            printf("Insufficient memory to insert element at head.\n");
            return 1;
        }
    }

    // Inserting element at position 5
    head = insertAtPosition(5, 999, head, &errorCode);
    if (errorCode == 1) {
        printf("Insufficient memory to insert element at position.\n");
        return 1;
    }

    // Removing element at position 10
    head = removeAtPosition(10, head, &errorCode);
    if (errorCode == 1) {
        printf("Error removing element at position.\n");
        return 1;
    }

    // Removing all instances of value 50
    head = removeObject(50, head, &errorCode);
    if (errorCode == 1) {
        printf("Error removing object.\n");
        return 1;
    }

    for (int i = 1; i <= getListLength(head); i++) {
        printf("%d ", getAtIndex(i, head));
    }
    printf("\n");
    head = freeList(head);
    return 0;
}
