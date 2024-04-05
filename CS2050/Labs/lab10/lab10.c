#include "lab10.h"

typedef struct Queue_t{
    Node *front; 
    Node *back; 
    int size; 
}Queue; 

typedef struct node{
    int *data;
    struct node *next; 
}Node; 


// O(1)
/*newQueue: 
this functions create a new queue and returns a pointer to the new queue
*/
Queue * newQueue(void){
    Queue *q =(Queue *) malloc(sizeof(Queue));

    if (q == NULL){
        return NULL;
    }
    q->front = NULL; 
    q->back = NULL;
    q->size = 0; 

return q; 
}

// O(1)


/*getSize: 
this function returns the number of items in the queue
*/
int getSize(Queue *q){
    int count = 0; 
    Queue *temp = q->front; 
while (q != NULL){
    count++; 
    return count; 
}
//or return q->size; 
}

// O(1)

/*enQueue:
This function takes a queue and a data element then inserts that element into the queue 
*/
int enQueue(Queue *q, void *data){
if (q == NULL||data == NULL){
    return 0; 
}
Node *newNode = (Node *)malloc(sizeof(Node));
if (newNode == NULL){
    return 0; 
}
newNode->data = data; 
newNode->next = NULL; 

if (q->back == NULL){
    q->front = newNode; 
}else{
    q->back->next = newNode; 
}

q->back = newNode; 
q->size++; 

return 1; 

}

// O(1)

/*peek:
this function takes a queue and returns the item at the front of the queue
*/
void * peek(Queue *q){
    if(q == NULL){
        return NULL; 
    }
return q->front->data; 

}

// O(1)


/*deQueue; 
this function takes a queue and removes and returns the item at the front of the queue; 
*/
void * deQueue(Queue *q){
Node *temp = q->front; 

void *data = temp->data; 

q->front = q->front->next; 

free(temp);
q->size--;
return data; 

}

// O(n)
/*destroy: 
this function frees the memory allocated to the queue
*/
void destroy(Queue *q){
while (q->front !=NULL){
    Node *temp = q->front; 
    q->front = q->front->next; 
    free(temp);
}
free(q)

}


