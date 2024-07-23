/*
CMP_SC 2050
Summer 2024
lab 5
by Zachary Burns 
June 20, 2024 
*/

#include "lab5.h"
#include <stdio.h>
#include <stdlib.h>



/*makeList: 
this function takes in a pointer to a list pointer and returns an empty initialized list.
0 = success 
1 = failure 
*/
int makeList(Node **list) {
    //dont need to allocate memory here. 
    if (list == NULL){
        fprintf(stderr, "List is already NULL (makeList)\n");
        return 1;
    }

    *list = NULL;

    return 0;
}

/* getSize: 
this function takes a list and returns the size of the list.
0 = success
1 = failure 
*/
int getSize(Node *list) {

    if (list == NULL) {
        fprintf(stderr, "List is empty (getSize)\n");
        return 0;
    }

    int count = 0; 
    Node *p = list; 

    //traverse list 
    while (p != NULL){
        count++;
        p = p->next;   
    }
   
    return count; 
}


/*insertAtHead: 
this function takes a pointer to a list and a data input 
and inserts the data at the head of the list.
0 = success
1 = failure 
*/
int insertAtHead(Node **list, void *data) {
    // Error checking for list and data 
    if (list == NULL || data == NULL ) {
        fprintf(stderr, "List or data is NULL (insertAtHead)\n");
        return 1;
    }
   

    Node *node = (Node *)malloc(sizeof(Node));

    if (node == NULL) {
        fprintf(stderr, "Error in memory allocation (insertAtHead)\n");
        return 1;
    }

    node->data = data; 
    node->next = *list;
    *list = node;

    return 0;
}

/*removeFromTail: 
this function takes in a list pointer and removes the data at the tail of the list
and returns the data that was removed from the list. 

nothing in the list == NULL 
*/
void * removeFromTail(Node **list) {
    if (list == NULL || *list == NULL) {
        fprintf(stderr, "List is NULL (removeFromTail)\n");
        return NULL;
    }

    Node *p = *list;
    Node *p1 = NULL;

    while (p->next != NULL) {
        p1 = p;
        p = p->next;
    }
    
    void *data = p->data;
    free(p);

    //if only one node in list 
    if (p1 == NULL) {
        *list = NULL;
        free(p);
    } else { 
        //set the new last node to NULL
        p1->next = NULL;
    }
    free(p);
    return data;
}

/*freeList: 
this function takes a pointer to a list and frees the memory that was allocated to it 
and sets the pointer to NULL. 
*/
void freeList(Node **list) {
    //valgrind error from not have this inside brackets...
    if (list == NULL ) {
    fprintf(stderr, "list is already NULL / empty (freeList)");
    return;
    }
    
    Node *p = *list;

    while (p != NULL) {
        Node *temp = p;
        p = p->next;
        free(temp);
    }
    *list = NULL;
}


