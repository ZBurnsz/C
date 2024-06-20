#include "lab5.h"
#include <stdio.h>
#include <stdlib.h>


int main(void){

    Node *list = NULL; 
    int error = makeList(&list); 
    if (error == 1){
        fprintf(stderr, "Error in makeList");
        return 1; 
    }

    int size = getSize(list); 
    printf("Size of list: %d\n", size); 

    int data = 5; 
    error = insertAtHead(&list, &data); 
    if (error == 1){
        fprintf(stderr, "Error in insertAtHead");
        return 1; 
    }

    size = getSize(list); 
    printf("Size of list: %d\n", size); 

    data = 10; 
    error = insertAtHead(&list, &data); 
    if (error == 1){
        fprintf(stderr, "Error in insertAtHead");
        return 1; 
    }

    size = getSize(list); 
    printf("Size of list: %d\n", size); 

    data = 15; 
    error = insertAtHead(&list, &data); 
    if (error == 1){
        fprintf(stderr, "Error in insertAtHead");
        return 1; 
    }

    size = getSize(list); 
    printf("Size of list: %d\n", size); 

    data = 20; 
    error = insertAtHead(&list, &data); 
    if (error == 1){
        fprintf(stderr, "Error in insertAtHead");
        return 1; 
    }

    size = getSize(list); 
    printf("Size of list: %d\n", size); 

    void *removedData = removeFromTail(&list); 
    if (removedData == NULL){
        fprintf(stderr, "Error in removeFromTail");
        return 1; 
    }

    size = getSize(list); 
    printf("Size of list: %d\n", size); 

    freeList(&list); 

    return 0;












}