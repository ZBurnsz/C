#include "Queue.h"
#include <stdio.h> 
#include <stdlib.h> 

//lab 10 cs2050



Queue* newQueue(int capacity) {
    Queue *q = (Queue *)malloc(sizeof(Queue));
    q->data = (int *)malloc(capacity * sizeof(int));
    q->front = 0;
    q->back = 0;
    q->size = 0;
    q->capacity = capacity;
    return q;
}

void enQueue(Queue *q, int data) {
    if (q->size == q->capacity) {
        // Handle queue overflow
        return;
    }
    q->data[q->back] = data; // Assign directly since `data` is an integer
    q->back = (q->back + 1) % q->capacity;
    q->size++;
}

int deQueue(Queue *q) {
    if (q->size == 0) {
        return -1;
    }
    int result = q->data[q->front];
    q->front = (q->front + 1) % q->capacity;
    q->size--;
    return result;
}
int isEmpty(Queue *q) {
    return q->size == 0;
}

void destroy(Queue *q) {
    free(q->data);
    free(q);
}