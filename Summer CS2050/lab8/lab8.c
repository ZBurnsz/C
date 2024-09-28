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
}*PQueue;
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
if (q == NULL){
    fprintf(stderr, "q is NULL (pqInsert)\n");
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

//if queue is empty or newest node has the higher priority 
//head case 
if (q->head == NULL || newNode->priority < q->head->priority ){
    newNode->next = q->head; //pointing the newNode to the head 
    q->head = newNode; //setting the head as the New node
}else{

    Node *temp = q->head;

    while (temp->next != NULL && temp->next->priority <= newNode->priority){
            temp = temp->next; 
    }
    newNode->next = temp->next;
    temp->next = newNode;
}


q->length++;
q->error = 0; 
return 0;
    
}

/*removeFromHead


*/
void *removeFromHead(PQueue q) {
  if (q == NULL) {
    fprintf(stderr, "Queue is NULL (removeFromHead)\n");
    return NULL;
  }

  if (q->head == NULL) { // Check for empty queue
    q->error = 2;
    return NULL;
  }

  Node *temp = q->head;
  void *data = temp->data;

  q->head = q->head->next;
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
    return NULL;
}
if (q->head == NULL){
    fprintf(stderr, "Queue is empty (pqPeek)\n");
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
    return 0;
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

Node *temp = q->head;
while (temp != NULL){
    Node *p = temp;
    temp = temp->next;
    free(p); 
    }
free(q);

}
