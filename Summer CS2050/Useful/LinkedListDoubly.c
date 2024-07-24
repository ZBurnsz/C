#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int data;
    struct Node *next;
    struct Node *prev;
} Node;

typedef struct {
    Node *head;
    Node *tail;
} DoublyLinkedList;

Node* createNode(int data) {
    Node *newNode = (Node *)malloc(sizeof(Node));
    if (newNode == NULL) {
        printf("Memory allocation failed\n");
        return NULL;
    }
    newNode->data = data;
    newNode->next = NULL;
    newNode->prev = NULL;
    return newNode;
}

void insertAtHead(DoublyLinkedList *list, int data) {
    Node *newNode = createNode(data);
    
    if (list->head == NULL) {
        list->head = newNode;
        list->tail = newNode;

    } else {
        newNode->next = list->head;
        list->head->prev = newNode;
        list->head = newNode;
    }
}

void insertAtTail(DoublyLinkedList *list, int data) {
    Node *newNode = createNode(data);
    if (list->tail == NULL) {
        list->head = newNode;
        list->tail = newNode;
    } else {
        newNode->prev = list->tail;
        list->tail->next = newNode;
        list->tail = newNode;
    }
}

void displayList(DoublyLinkedList *list) {
    Node *current = list->head;
    while (current != NULL) {
        printf("%d ", current->data);
        current = current->next;
    }
    printf("\n");
}

// Main function to demonstrate operations
int main() {
    DoublyLinkedList list = {NULL, NULL};

    insertAtHead(&list, 1);
    insertAtHead(&list, 2);
    insertAtTail(&list, 3);
    insertAtTail(&list, 4);

    displayList(&list); // Expected output: 2 1 3 4

    return 0;
}