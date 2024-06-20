/*
CMP_SC 2050
Summer 2024
lab 5
by Zachary Burns 
June 20, 2024 
*/
#include "lab5.h"
#include <stdio.h>
#include <stdlib.h>

typedef struct {
    Node *head;
    Node *tail;
    int length;
} *List;


/*makeList: 
this function takes in a pointer to a list node and returns an empty initialized list.
0 = success 
1 = failure 
*/
int makeList(Node **list) {
    List *newList = (List *)malloc(sizeof(List));
    if (newList == NULL) {
        fprintf(stderr, "Error in memory allocation (makeList)\n");
        return 1;
    }
    newList->head = NULL;
    newList->tail = NULL;
    newList->length = 0;
    *list = (Node *)newList;  // Casting List pointer to Node pointer
    return 0;
}

/* getSize: 
this function takes a list and returns the size of the list.
Returns the size or -1 on failure.
*/
int getSize(Node *list) {
    if (list == NULL) {
        fprintf(stderr, "List is NULL (getSize)\n");
        return -1;
    }
    List *actualList = (List *)list;
    return actualList->length;
}

/*insertAtHead: 
this function takes a pointer to a list and a data input 
and inserts the data at the head of the list.
0 = success
1 = failure 
*/
int insertAtHead(Node **list, void *data) {
    if (list == NULL || data == NULL) {
        fprintf(stderr, "List or data is NULL (insertAtHead)\n");
        return 1;
    }

    List *actualList = (List *)*list;
    Node *newNode = (Node *)malloc(sizeof(Node));
    if (newNode == NULL) {
        fprintf(stderr, "Error in memory allocation (insertAtHead)\n");
        return 1;
    }

    newNode->data = data;
    newNode->next = actualList->head;
    actualList->head = newNode;

    if (actualList->tail == NULL) {
        actualList->tail = newNode;
    }

    actualList->length++;
    return 0;
}

/*removeFromTail: 
this function takes in a list pointer and removes the data at the tail of the list
and returns the data that was removed from the list. 
Returns NULL if the list is empty.
*/
void *removeFromTail(Node **list) {
    if (list == NULL || *list == NULL) {
        fprintf(stderr, "List is NULL (removeFromTail)\n");
        return NULL;
    }

    List *actualList = (List *)*list;
    if (actualList->head == NULL) {
        return NULL;
    }

    Node *current = actualList->head;
    Node *prev = NULL;
    while (current->next != NULL) {
        prev = current;
        current = current->next;
    }

    void *data = current->data;
    free(current);

    if (prev == NULL) {
        actualList->head = NULL;
        actualList->tail = NULL;
    } else {
        prev->next = NULL;
        actualList->tail = prev;
    }

    actualList->length--;
    return data;
}

/*freeList: 
this function takes a pointer to a list and frees the memory that was allocated to it 
and sets the pointer to NULL. 
*/
void freeList(Node **list) {
    if (list == NULL || *list == NULL) return;

    List *actualList = (List *)*list;
    Node *current = actualList->head;
    while (current != NULL) {
        Node *temp = current;
        current = current->next;
        free(temp);
    }
    free(actualList);
    *list = NULL;
}
