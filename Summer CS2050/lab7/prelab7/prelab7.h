#ifndef PRELAB7_H
#define PRELAB7_H

typedef struct node {
    void *data;
    struct node *next;
} Node;

typedef struct {
    Node *front;
    Node *back;
    int size;
    int errorCode;
} Queue;

// Function prototypes
int getQueueErrorCode(Queue *q);
Queue queueInit();
int enqueue(void *data, Queue *q);
void *dequeue(Queue *q);
int getQueueSize(Queue *q);
void freeQueue(Queue *q);

#endif
