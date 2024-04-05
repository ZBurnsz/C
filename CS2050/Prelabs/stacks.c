#include <stdio.h> 
#include <stdlib.h>

typedef struct node{
    int data;
    struct node * next; 
}Node; 

Node * top = NULL; 

void push (int data){
    Node * newNode = malloc(sizeof(Node));
    if (newNode == NULL){
        fprintf(stderr, "error with memory");
        return;
    }
    newNode->data = data; 
    newNode->next = top;
    top = newNode; 
}

void pop(){
    if (top != NULL){
    Node * temp = top; 
    top = top->next; 
    free(temp);
    return;
}else{
    printf("Error");
}

    }

void display(){
    if (top == NULL){
        printf("Error");
        return;
    }
    Node * curr = top; 
    while (curr->next != NULL){
        printf("%d", curr->data);
        curr = curr->next; 
    }
    printf("%d", curr->next);
    printf("\n");
}
