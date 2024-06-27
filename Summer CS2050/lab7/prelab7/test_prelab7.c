#include <stdio.h>
#include "prelab7.h"



int main() {
    // Example usage
    Queue q = queueInit();

    enqueue((void *)10, &q);
    enqueue((void *)20, &q);
    enqueue((void *)30, &q);


    printf("size: %d", getQueueSize(&q));
    printf("Dequeued: %d\n", *(int*)dequeue(&q));
    printf("Dequeued: %d\n", *(int*)dequeue(&q));
    printf("Dequeued: %d\n", *(int*)dequeue(&q));
    printf("Dequeued: %d\n", *(int*)dequeue(&q)); // should indicate an empty queue


    freeQueue(&q);

    return 0;
}