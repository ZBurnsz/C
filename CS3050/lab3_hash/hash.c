#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include "hash.h"
/*Zachary Burns*/

typedef struct Chain { 
    int key; 
    void *element; 
    struct Chain *next; 
} Chain;



// Inserts element into hashtable 
// if collision happens return -1 
int InsertFailCollision(void *hashtable, int elementSize, int elementCountMax, int key, void *element, int (*HashFunc)(int key)) {
    if (hashtable == NULL || HashFunc == NULL || element == NULL){
        fprintf(stderr, "Null-InsertFailCollision");
        return 1;
    }
    int index = HashFunc(key) % 13; 
    void **table = (void **)hashtable; 

    // Collision 
    if (table[index] != NULL) { 
        return -1; 
    }

    table[index] = malloc(elementSize); 
    memcpy(table[index], element, elementSize); 
    return 0;
}

// Searches for an element in hashtable
// Returns element found if element != found returns NULL
void *SearchNoCollision(void *hashtable, int key, int elementSize, int (*HashFunc)(int key)) {

    if (hashtable == NULL || HashFunc == NULL){
        fprintf(stderr, "Null-SearchNoCoollision");
        exit(1);
    }

    int index = HashFunc(key) % 13;

    void **table = (void **)hashtable;

    // Not found 
    if (table[index] == NULL) {
        return NULL; 
    }

    return table[index];
}

// Hashing method using division 

int DivMethod(int key) {
    int m = 13; 
    return key % m; 
}

// Hashing method using multiplication (Knuth method)
int MultMethod(int key) { 

    float A = 0.6180339887; 
    int m = 13; 

    float f = key * A - (int)(key * A); 


    return (int)(m * f);
}
    

// Allocates an array -> linked list for chaining 
void * AllocateChainTable(int elementCountMax){

    Chain **table = malloc(sizeof(Chain *) * elementCountMax); 

    for (int i = 0; i < elementCountMax; i++) { 
        table[i] = NULL;
    }

    return table; 
}

// Frees chain memory 
//!....
void FreeChainTable(void *hashtable) {
    
    if (hashtable == NULL) {
        fprintf(stderr, "table is NULL"); 
        return;
    }

    int i = 0; 
    Chain **table = (Chain **)hashtable; 

    while(table[i] != NULL){   

        Chain *current = table[i]; 

        while (current != NULL) { 
            Chain *temp = current; 
            current = current->next; 

            free(temp->element); 
            free(temp); 
        }
        i++; 
    }
    free(table); 
}

// Inserts an element into the table 
// If collision happens resolve collision using chaining 
int InsertChain(void *hashtable, int elementSize, int elementCountMax, int key, void *element, int (*HashFunc)(int key)) {


    int Index = HashFunc(key) % 13; 

    Chain **table = (Chain **)hashtable;

    Chain *newNode = malloc(sizeof(Chain));

    newNode->key = key; 

    newNode->element = malloc(elementSize); 

    memcpy(newNode->element, element, elementSize);

    newNode->next = NULL; 

    // Collision 
    if (table[Index] == NULL) {

        table[Index] = newNode;

    } else { 
        Chain *current = table[Index]; 

        while (current->next != NULL) { 

            current = current->next; 

        }

        current->next = newNode; 
    }

    return 0;
}

// Search for an element in table with chaining enabled
void *SearchChain(void *hashtable, int key, int elementSize, int (*HashFunc)(int key)) {
  

    int index = HashFunc(key) % 13;

    Chain **table = (Chain **)hashtable; 

    Chain *current = table[index];

    while (current != NULL) { 

        if (current->key == key) {

            return current->element; 

        }

        current = current->next;
    }

    return NULL;
}
