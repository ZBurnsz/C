#include "lab5.h"

typedef struct listStruct {
    int object;
    struct listStruct *next;
} List;





List *initList(int *errorCode) {
    List *list = malloc(sizeof(List));


    if (list == NULL) {
        *errorCode = 1;
    } else {
        *errorCode = 0;
        list->object = 0; //initialize the object to 0 start of list 
        list->next = NULL; //end of list is NULL
    }
    return list;
}



List *insertAtHead(int value, List *list, int *errorCode) {
    List *newNode = malloc(sizeof(List));
    if (newNode == NULL) {
        *errorCode = 1;
        return list;
    }else{
    *errorCode = 0;
    newNode->object = value; //value to be inserted
    newNode->next = list; //new node points to the head of the list
    }
    
    return newNode; //return the new head of the list
}




int getAtIndex(int index, List *list) {
    List *current = list;
    int count = 1;
    while (current != NULL) {
        if (count == index) {
            return current->object;
        }
        current = current->next;
        count++;
    }
    return -1; // Return -1 if index is out of bounds
}

int getListLength(List *list) {
    List *current = list;
    int count = 0;
    while (current != NULL) {
        count++;
        current = current->next;
    }
    return count;
}

 /* This function frees all memory allocated for a list and 
returns NULL. */ 
List *freeList(List *list) {
    List *current = list;
    while (current != NULL) {
        List *temp = current;
        current = current->next;
        free(temp);
    }
    return NULL;
}












