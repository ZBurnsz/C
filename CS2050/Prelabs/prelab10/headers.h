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

/* List ADT Functions */

List initEmptyList(int *);

int insertHead(void *, List);

void * getHeadObject(List);

int removeHead(List);

int insertTail(void *, List);

void * getTailObject(List);

int getLength(List);

int deleteList(List);

/* Stack ADT Functions */

typedef List Stack;

/* This function returns an empty stack. Parameter is a reference to an error code. */
Stack initEmptyStack(int *);

/* This function pushes the user’s object onto the stack. Returns error code. */
int push(void *, Stack);

/* This function pops from the stack. NULL is returned if the stack is empty. */
void * pop(Stack);

/* This function returns the number of objects on the stack. */
int getStackSize(Stack);

/* This function deletes the Stack and returns an uninitialized stack. */
/* No operations can be performed on deleted stack. */
Stack deleteStack(Stack);

#endif /* HEADERS_H */
