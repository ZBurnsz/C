/*
CMP_SC 2050
Summer 2024
lab 7
by Zachary Burns 
June 27, 2024 
*/


#include "lab7.h"
#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    void *data;
    struct node *next;
} Node;

typedef struct _Stack{
    Node *head;
    int length; 
} Stack;



/*initStack: 
this function simply initilize and return a stack. 
if fail set pointer to null.
*/
Stack * initStack(){
    Stack *newStack = (Stack *)malloc(sizeof(Stack));

    if (newStack == NULL){
        fprintf(stderr, "Stack is NULL (initStack)\n");
        return NULL;
    }
    newStack->head = NULL;
    newStack->length = 0;
    return newStack;


}

/*getSize: 
this function takes a stack pointer and returns the size of that stack. 
*/
// O(1)
int getSize(Stack * s){
if (s == NULL ){
    fprintf(stderr, "Stack is NULL (getSize)\n");
    return 0;
}

return s->length; 


}
/*peekStack: 
this function takes a stack pointer and returns the top element but does not remove it. 
*/
// O(1)
void * peekStack(Stack * s){
    if (s == NULL || s->head == NULL){
        fprintf(stderr, "Stack is NULL or empty (peekStack)\n");
        return NULL;
    }
    return s->head->data; 

}

/*insertHead: 
this function creates a new node for a data item and inserts that item at the head of the list.
*/
int insertHead(void *data, Stack * s) {
    if (data == NULL){
        fprintf(stderr, "Data is NULL (insertHead)\n");
        return 1;
    }
    if (s == NULL){
        fprintf(stderr, "Stack is NULL (insertHead)\n");
        return 1;
    }


    Node *newNode = (Node *)malloc(sizeof(Node));

    if (newNode == NULL){

        fprintf(stderr, "Stack is NULL (insertHead)\n");
        return 1; 

    }

    newNode->data = data;
    newNode->next = s->head;
    s->head = newNode;

    
    s->length++;
    return 0;
}

/*pushStack: 
this function takes a stack and data pointer and pushes the data onto the head of the stack. 
0 == success. 
1 == failure. 
*/
// O(1)
int pushStack(Stack * s, void *data){
    if (s == NULL){
        fprintf(stderr, "Stack is NULL (pushStack)\n");
        return 1;
    }
    if (data == NULL){
        fprintf(stderr, "Data is NULL (pushStack)\n");
        return 1;
    }

    
    return insertHead(data, s);


}
/*removeFromHead:
this functions takes a stack pointer and removes the head item in the stack 
and also returns that item. 
*/
void * removeFromHead(Stack *s) {
    if (s == NULL || s->head == NULL) {
        fprintf(stderr, "Stack is NULL or empty (removeFromHead)\n"); 
        return NULL; 
    }

    Node *temp = s->head;
    void *data = temp->data;
    s->head = s->head->next;

    free(temp);

    s->length--; 

    return data; 
}

/*popStack: 
this functions takes a stack pointer and pops the top item off the stack. 
It also returns that item. 
*/
// O(1)
void * popStack(Stack * s){
    if (s == NULL || s->head == NULL){
            fprintf(stderr, "Stack is NULL (popStack)\n");
            return NULL;
        }
   

    return removeFromHead(s);

}

/*stackContains: 
this function takes a stack pointer a data item and loops through the stack to
derermine if the given data item is in the stack. 

1 = success. 
0 = no in the stack. 
*/
// O(n)
int stackContains(Stack * s, void *data){
    if (data == NULL){
        fprintf(stderr, "Data is NULL (insertHead)\n");
        return 0;
    }
    if (s == NULL){
        fprintf(stderr, "Stack is NULL (insertHead)\n");
        return 0;
    }

    Node *Head = s->head;
    
    while (Head != NULL){
        if (Head->data == data){
            return 1; 
        }
        Head = Head->next; 
    }

    return 0;

}

/*freeStack: 
this function takes in a stack pointer and frees all the memory. 
*/
// O(n)
void freeStack(Stack * s){
    if (s == NULL){
        fprintf(stderr, "Stack is NULL (freeStack)\n");
        return;
    }

    Node *freeS = s->head;

    while (freeS != NULL){
        Node *temp = freeS;
        freeS= freeS->next;
        free(temp);
    }

    free(s);




}