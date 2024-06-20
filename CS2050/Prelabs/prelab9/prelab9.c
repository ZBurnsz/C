#include "header.h"

typedef struct ListNode {
    void *data;
    struct ListNode *next;
} ListNode;

typedef struct {
    ListNode *head;
    ListNode *tail;
    int length;
} *List;


List initEmptyList(int *error) {
    List newList = (List)malloc(sizeof(struct ListNode));
    if (newList == NULL) {
        *error = 1;
        return NULL;
    }
    newList->head = NULL;
    newList->tail = NULL;
    newList->length = 0;
    *error = 0;
    return newList;
}

int insertHead(void *data, List list) {
    
    ListNode *newNode = (ListNode *)malloc(sizeof(ListNode));
    if (newNode == NULL) return 1; // Memory allocation error

    newNode->data = data;
    newNode->next = list->head;
    list->head = newNode;
    
    if (list->tail == NULL) {
        list->tail = newNode;
    }
    list->length++;
    return 0;
}

void * getHeadObject(List list) {
    if (list->head == NULL) return NULL;
    return list->head->data;
}

int removeHead(List list) {
    if (list->head == NULL) return 1; // Empty list
    ListNode *temp = list->head;
    list->head = list->head->next;
    free(temp);
    list->length--;
    if (list->head == NULL) {
        list->tail = NULL;
    }
    return 0;
}

int insertTail(void *data, List list) {
    ListNode *newNode = (ListNode *)malloc(sizeof(ListNode));
    if (newNode == NULL) return 1; // Memory allocation error
    newNode->data = data;
    newNode->next = NULL;
    if (list->tail != NULL) {
        list->tail->next = newNode;
    }
    list->tail = newNode;
    if (list->head == NULL) {
        list->head = newNode;
    }
    list->length++;
    return 0;
}

void * getTailObject(List list) {
    if (list->tail == NULL) return NULL;
    return list->tail->data;
}

int getLength(List list) {
    return list->length;
}

int deleteList(List list) {
    ListNode *current = list->head;
    while (current != NULL) {
        ListNode *next = current->next;
        free(current);
        current = next;
    }
    free(list);
    return 0;
}
