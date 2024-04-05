#include "stdio.h"
#include "stdlib.h"


#ifndef HEADERS_H
#define HEADERS_H

typedef struct ListNode {
    void *data;
    struct ListNode *next;
} ListNode;

typedef struct {
    ListNode *head;
    ListNode *tail;
    int length;
} *List;

/* This function returns an empty list. Parameter is a reference to an error code. */
List initEmptyList(int *);

/* This function inserts the pointer to a user’s object at the head of the list. Returns error code. */
int insertHead(void *, List);

/* This function returns the object at the head of the list. NULL is returned if the list is empty. */
void * getHeadObject(List);

/* This function removes the object at the head of the list. Returns error code. */
int removeHead(List);

/* This function inserts the pointer to a user’s object at the tail of the list. Returns error code. */
int insertTail(void *, List);

/* This function returns the object at the tail of the list. NULL is returned if the list is empty. */
void * getTailObject(List);

/* This function returns the number of objects in the list. */
int getLength(List);

/* This function deletes list, and returns an error code. No operations can be performed on deleted list */
int deleteList(List);

#endif /* HEADERS_H */
