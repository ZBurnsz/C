#include "lab6.h"
#include <stdio.h>
#include <stdlib.h>

int main() {
    Node *list;
    
    // Initialize the list with a dummy head node
    if (makeList(&list) != 0) {
        fprintf(stderr, "Failed to initialize the list\n");
        return -1;
    }

    // Insert elements into the list
    int a = 10, b = 20, c = 30;
    insertAtTail(list, &a);
    insertAtTail(list, &b);
    insertAtTail(list, &c);

    // Display the list size
    printf("List size: %d\n", getSize(list));

    // Get and display element at index 1
    int *dataAtIndex1 = (int *)getAtIndex(list, 1);
    if (dataAtIndex1 != NULL) {
        printf("Element at index 1: %d\n", *dataAtIndex1);
    } else {
        printf("Element at index 1 not found\n");
    }

    // Remove and display element from the head
    int *removedData = (int *)removeFromHead(list);
    if (removedData != NULL) {
        printf("Removed element from head: %d\n", *removedData);
    } else {
        printf("No element to remove from head\n");
    }

    // Free the list
    freeList(&list);

    return 0;
}