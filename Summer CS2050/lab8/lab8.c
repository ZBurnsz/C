/*
CMP_SC 2050
Summer 2024
lab 8
by Zachary Burns 
June 28, 2024 
*/

#include "lab8.h"
#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    void *data;
    int priority;
    struct node *next;
} Node;

typedef struct _PQueue  {
    Node *head;
    int error;
    int length;
}*Queue;
/*
- (-1) - q is null in geterrorcode 
1- 
2- NULL on required functions from pdf
3- NULL
404 = 

*/

//head = insert (lowest priority)
//tail = dequeue (greates priority)

/*pqGetErrorCode: 
this function takes a queue pointer and returns the error code for the queue. 
*/
// O(1)
int pqGetErrorCode(PQueue q){
    if (q == NULL){
        fprintf(stderr, "queue is NULL (pwGetErrorCode)");
        return -1;
    }

    return q->error;

}

/*pqInit: 
this function initializes and returns a new queue. If memory allocation fails, it returns NULL.
*/
// O(1)
PQueue pqInit(){

    PQueue q = (PQueue)malloc(sizeof(struct _PQueue));

    if (q == NULL){
        fprintf(stderr, "q is NULL (pqInit)\n");
        q->error= 3;
        return NULL;
    }

    q->head = NULL;
    q->length = 0;
    q->error = 0;

    return q; 

}

/*pqInsert: 
this function takes a data pointer and a queue pointer, then inserts the data into the queue. 
0 == success. 
1 == failure. 
*/
// O(n)
int pqInsert(void *data, int priority, PQueue q){
if (data == NULL){
    fprintf(stderr, "data is NULL (pqInsert)\n");
    q->error = 3;
    return 1;
}
if (q == NULL){
    fprintf(stderr, "q is NULL (pqInsert)\n");
    q->error = 3;
    return 1;
}

Node *newNode = (Node*)malloc(sizeof(Node));

if (newNode == NULL){
    fprintf(stderr, "newNode is NULL (pqInsert)\n");
    q->error = 3;
    return 1;
}
newNode->data = data; 
newNode->priority = priority;
newNode->next = NULL;


if (newNode->priority > priority || q->head == NULL){
    newNode->next = q->head;
    q->head = newNode;
}

Node *temp = q->head;

while (temp != NULL){
    if (temp->priority <= priority){
        newNode->next = temp->next;
        temp->next = newNode;
    }
    temp = temp->next; 
}

q->length++;
q->error = 0; 
return 0;
    
    }


/*removeFromHead


*/
void * removeFromHead(Queue q){

if (q == NULL ){
    fprintf(stderr, "List is NULL(removeFromHead)\n"); 
    return NULL; 
}




Node *temp = q->head;
void *data = temp->data;

if (q->head->next == NULL){
    q->head = NULL;
}else {
    q->head = q->head->next; 
}
free(temp);
q->length--; 


return data; 
}



/*pqRemoveMin: 
this function takes a queue pointer and removes the element with the minimum priority from the queue. 
It also returns that element. 
//return head elements 
*/
// O(1)
void * pqRemoveMin(PQueue q){
//remove head

if (q == NULL){
    fprintf(stderr, "q is NULL (pqRemoveMin)\n");
    q->error = 2;
    return NULL;
    }

q->error = 0; 
return removeFromHead(q);

}

/*pqPeek: 
this function takes a queue pointer and returns the element with the minimum priority but does not remove it. 
*/
// O(1)
void * pqPeek(PQueue q){
if (q == NULL){
    fprintf(stderr, "q is NULL (pqPeek)\n");
    q->error = 2;
    return NULL;
}

return q->head->data; 

}

/*pqGetSize: 
this function takes a queue pointer and returns the size of the queue. 
*/
// O(1)
int pqGetSize(PQueue q){
if(q == NULL){
    fprintf(stderr, "q is NULL (pqGetSize)\n");
    q->error = 3;
    return 1;

}

return q->length;

}

/*pqFree: 
this function takes a queue pointer and frees all the memory. 
*/
// O(n)
void pqFree(PQueue q){

if (q == NULL){
    fprintf(stderr, "q is NULL (pqFree)\n");
    return;
}

Node *temp = q->head->next;
Node *nextP = NULL;

while (temp != NULL){
    nextP = temp->next;
    free(temp); 
    temp = nextP;
    }
free(q);
q = NULL;

}
