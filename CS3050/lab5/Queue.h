#ifndef _QUEUE_H
#define _QUEUE_H

#ifdef __cplusplus
extern "C" 
{
#endif

// Data types
typedef struct {
    int *data; 
    int front; 
    int back; 
    int size;
    int capacity; 
} Queue; 

//prototypes
Queue *newQueue(int capacity);
void enQueue(Queue *q, int data);
int deQueue(Queue *q);
void destroy(Queue *q);
int isEmpty(Queue *q);


#ifdef __cplusplus
}
#endif

#endif