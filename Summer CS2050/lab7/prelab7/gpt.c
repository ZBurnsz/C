#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    void *data;
    struct node *next;
}Node;

typedef struct {
    Node *front;
    Node *back;
    int size;
    int *errorCode;
}Queue;

//! errorCode key
/*
0 - Success
1 - Out-of-memory error
2 - Queue empty error
3 - Invalid queue error
4 - Free queue error
*/

/* This function returns the error code from the most
recently executed queue operation. */
int getQueueErrorCode(Queue q) {
    return q.errorCode;
}

/* This function returns an initialized Queue variable.
Every queue variable must be initialized before
applying subsequent queue functions. */
Queue queueInit() {
    Queue q;
    q.front = NULL;
    q.back = NULL;
    q.size = 0;
    q.errorCode = 0; // success
    return q;
}

/* This function enqueues an object into the queue.
For convenience, error code is returned directly
(and also can be obtained via getQueueErrorCode) */
int enqueue(void *data, Queue *q) {
    if (q == NULL) {
        return 3; // invalid queue
    }
    Node *newNode = (Node *)malloc(sizeof(Node));
    if (newNode == NULL) {
        q->errorCode = 1; // out-of-memory error
        return 1;
    }
    newNode->data = data;
    newNode->next = NULL;

    if (q->back == NULL) {
        q->front = newNode;
        q->back = newNode;
    } else {
        q->back->next = newNode;
        q->back = newNode;
    }
    q->size++;
    q->errorCode = 0; // success
    return 0;
}

/* This function performs dequeue and returns
object at front of queue. NULL is returned
if queue is empty and error code is set to 2.
NOTE: User should check error code if null
objects are permitted in the queue. */
void *dequeue(Queue *q) {
    if (q == NULL || q->front == NULL) {
        if (q != NULL) {
            q->errorCode = 2; // queue empty error
        }
        return NULL;
    }
    Node *temp = q->front;
    void *data = temp->data;
    q->front = q->front->next;
    if (q->front == NULL) {
        q->back = NULL;
    }
    free(temp);
    q->size--;
    q->errorCode = 0; // success
    return data;
}

/* This function returns the number of objects
in the queue. */
int getQueueSize(Queue q) {
    return q.size;
}

/* This function uninitializes a queue and frees all
memory associated with it. NOTE: value of Queue
variable is undefined after this function is
applied, i.e., it should not be used unless
initialized again using queueInit. */
void freeQueue(Queue *q) {
    if (q == NULL) {
        return;
    }
    while (q->front != NULL) {
        Node *temp = q->front;
        q->front = q->front->next;
        free(temp);
    }
    q->back = NULL;
    q->size = 0;
    q->errorCode = 0; // success
}

int main() {
    // Example usage
    Queue q = queueInit();

    enqueue((void *)10, &q);
    enqueue((void *)20, &q);
    enqueue((void *)30, &q);

    printf("Dequeued: %d\n", (int)dequeue(&q));
    printf("Dequeued: %d\n", (int)dequeue(&q));
    printf("Dequeued: %d\n", (int)dequeue(&q));
    printf("Dequeued: %d\n", (int)dequeue(&q)); // should indicate an empty queue

    freeQueue(&q);
    return 0;
}
