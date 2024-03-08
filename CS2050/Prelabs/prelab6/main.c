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
    for (int i = 1; i <= getListLength(head); i++) {
        printf("%d ", getAtIndex(i, head));
    }
    printf("\n");
    head = freeList(head);
    return 0;
}