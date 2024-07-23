/*
CMP_SC 2050
Summer 2024
lab 12
by Zachary Burns
July 19, 2024
*/

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include "lab12.h"

typedef struct _HeapNode
{
    int key;
    void *data;
} HeapNode;

typedef struct _Heap
{
    HeapNode *node;
    int size;
    int capacity;

} Heap, *PHeap;

/* HeapConstruct:
   This function allocates memory for the heap structure.
*/
PHeap HeapConstruct()
{
    PHeap heap = (PHeap)malloc(sizeof(Heap));

    if (heap == NULL)
    {
        fprintf(stderr, "Heap allocation failed (HeapConstruct)\n");
        return NULL;
    }

    heap->size = 0;
    heap->capacity = 1;
    heap->node = (HeapNode *)malloc(sizeof(HeapNode) * heap->capacity);

    if (heap->node == NULL)
    {
        fprintf(stderr, "Heap node allocation failed (HeapConstruct)\n");
        free(heap);
        return NULL;
    }
    return heap;
}

//! Helper functions

/*SwapNodes:
a simple helper function to swap nodes
*/
void SwapNodes(HeapNode *a, HeapNode *b)
{
    HeapNode temp = *a;
    *a = *b;
    *b = temp;
}
/*insertHelper:
this function is a helper function for the heapInsert function. It helps keep the structure of the heap after a
new input data by comparing it with its parent and seeing if its < than that its parent if so then it continues
to move up.
*/
void insertHelper(PHeap heap, int index)
{
    if (heap == NULL)
    {
        fprintf(stderr, "Heap is NULL (insertHelper)\n");
        return;
    }

    while (index > 0)
    {
        int parent = (index - 1) / 2;

        if (heap->node[index].key < heap->node[parent].key)
        {
            SwapNodes(&heap->node[index], &heap->node[parent]);
            
            index = parent;
        }
        else
        {
            break;
        }
    }
}
/*deleteHelper:
this function is a helper for heapDelete, it helps maintain the heap structure after a node has been deleted.
*/
void deleteHelper(PHeap heap, int index)
{
    if (heap == NULL)
    {
        fprintf(stderr, "Heap is NULL (deleteHelper)\n");
        return;
    }

    int leftChild;
    int rightChild;
    int smallestIndex;

    while ((leftChild = index * 2 + 1) < heap->size)
    {
        rightChild = leftChild + 1;

        smallestIndex = leftChild;

        if (rightChild < heap->size && heap->node[rightChild].key < heap->node[leftChild].key)
        {
            smallestIndex = rightChild;
        }

        if (heap->node[index].key > heap->node[smallestIndex].key)
        {
            SwapNodes(&heap->node[index], &heap->node[smallestIndex]);

            index = smallestIndex;
        }else
        {
            break;
        }
    }
}
//!

/* HeapInsert:
   This function takes in a heap, a key element and input data and inserts that new element into the heap.
*/
int HeapInsert(PHeap heap, int key, void *inputData)
{
    if (heap == NULL)
    {
        fprintf(stderr, "Heap is NULL (HeapInsert)\n");
        return -1;
    }
    if (key < 0)
    {
        fprintf(stderr, "Key is negative (HeapInsert)\n");
        return -1;
    }

    if (heap->size == heap->capacity)
    {
        heap->capacity *= 2;
        heap->node = (HeapNode *)realloc(heap->node, heap->capacity * sizeof(HeapNode));
        if (!heap->node)
        {
            fprintf(stderr, "Reallocation failed (HeapInsert)\n");
            return -1;
        }
    }

    heap->node[heap->size].key = key;
    heap->node[heap->size].data = inputData;
    heap->size++;

    insertHelper(heap, heap->size - 1);

    return 0;
}

/* PrintHeap:
   This function prints the elements of the heap.
*/
void PrintHeap(PHeap heap)
{
    if (heap == NULL)
    {
        fprintf(stderr, "Heap is NULL (PrintHeap)\n");
        return;
    }

    for (int i = 0; i < heap->size; i++)
    {
        printf("Key: %d\n", heap->node[i].key);
    }
}

/* HeapDelete:
   This function removes the smallest value from the heap.
   Returns the key on success and -1 on failure.
*/
int HeapDelete(PHeap heap, void **outputData)
{
    if (heap == NULL || heap->size == 0)
    {
        fprintf(stderr, "Heap is NULL or empty (HeapDelete)\n");
        return -1;
    }

    int minKey = heap->node[0].key;

    if (outputData)
    {
        *outputData = heap->node[0].data;
    }

    heap->node[0] = heap->node[heap->size - 1];
    heap->size--;

    deleteHelper(heap, 0);

    return minKey;
}

/* HeapDestruct:
   This function frees all allocated memory associated with the heap.
*/
void HeapDestruct(PHeap heap)
{
    if (heap == NULL)
    {
        fprintf(stderr, "Heap is NULL (HeapDestruct)\n");
        return;
    }

    free(heap->node);
    free(heap);
}
