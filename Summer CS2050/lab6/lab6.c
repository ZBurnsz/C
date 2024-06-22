#include "lab6.h"
#include <stdio.h> 
#include <stdlib.h> 


typedef struct { 
    Node* head; 
    Node* tail; 
    int length; 
}NodeP; 


/*makeList: 
this function takes in a list and returns an emtpy list; 
0 = success 
1 = failure 

*/
int makeList(Node **list){
if (list == NULL){
    fprintf(stderr, "List is NULL (makeList)\n "); 
    return 1; 
}

NodeP *nodeP = (NodeP*)malloc(sizeof(NodeP));

if (nodeP == NULL){
    fprintf(stderr, "nodeP is NULL (makeList)\n"); 
    return 1; 
}

Node *temp = (Node*)malloc(sizeof(Node));

if(temp == NULL){
    fprintf(stderr, "Temp is NULL (makeList)\n"); 
    return 1; 
}


nodeP->head = NULL; 
nodeP->tail = NULL;
nodeP->length = 0;

*list = (Node*)nodeP;

return 0; 

}
/*getSize:
this function takes in a list node and returns the length of the list 
empty == 0 ; 
*/
int getSize(Node *list){
NodeP *nodeP = (NodeP*)list; 

if (list == NULL){
    fprintf(stderr,"List pointer is NULL(getSize)\n");
    return 0; 
}
return nodeP->length; 


}

/*getAtIndex: 
this function takes a list pointer and an index number and returns the number at that index 
within the linked list 

check for negative numbers and >= getsize(list);
*/
void * getAtIndex(Node *list, int index){
NodeP *nodeP = (NodeP*)list; 

if (list == NULL){
    fprintf(stderr, "list is NULL (getAtIndex)\n"); 
    return NULL;
}   
if (index < 0 || index >= nodeP->length){
    fprintf(stderr, "index is negative (getAtIndex)\n");
    return NULL; 
}
if (nodeP->head == NULL){
    fprintf(stderr, "List is empty (getAtIndex)\n");
    return NULL; 

}



Node *p = nodeP->head; 

int count = 0;
while (p != NULL){
    if (count == index){
        return p->data; 
    }
    count++; 
    p = p->next; 
}
return NULL;

}
/*insertAtTail: 
this function takes in a list pointer and a data pointer and inserts that data 
at the end of the linked list
0 = success; 
1 = failure; 

*/
int insertAtTail(Node *list, void *data){

if (list == NULL || data == NULL ) {
        fprintf(stderr, "List or data is NULL (insertAtTail)\n");
        return 1;
}

NodeP *nodeP = (NodeP*)list; 

Node *newNode = (Node*)malloc(sizeof(Node));

if (newNode == NULL){
    fprintf(stderr, "newNode == NULL (insertAtTail)\n"); 
    return 1; 
}

newNode->data = data;
newNode->next = NULL;

if (nodeP->head == NULL){
    nodeP->head = newNode; 
    nodeP->tail = newNode;
}else {
    nodeP->tail->next = newNode;
    nodeP->tail = newNode;
}

nodeP->length++;

return 0; 

}


/*removeFromHead: 
this function takes in a list pointer and removes the head of the linked list.
also returns the data that was removed from the list.
NULL == emtpy; 
*/
void * removeFromHead(Node *list){

if (list == NULL ){
    fprintf(stderr, "List is NULL(removeFromHead)\n"); 
    return NULL; 
}

NodeP *nodeP = (NodeP*)list; 

if (nodeP->head == NULL || nodeP->head->next == NULL){
    fprintf(stderr, "List is empty(removeFromHead)\n");
    return NULL; 
}


Node *temp = nodeP->head->next;
void *data = temp->data;
nodeP->head->next = temp->next;

if (nodeP->head->next == NULL){
    nodeP->tail = NULL; 
    nodeP->head = NULL;
}else {
    nodeP->head = nodeP->head->next; 
}
free(temp);
nodeP->length--; 


return data; 
}


/*freeList: 
this function takes in a list pointer and frees the memory allocated to that list. 
also sets the pointer to NULL. 

*/
void freeList(Node **list){
if (list == NULL || *list == NULL){
    fprintf(stderr, "List is emtpy (freeList)\n"); 
    return;
}
NodeP *nodeP = (NodeP*)*list;
Node *temp = nodeP->head->next;
Node *nextP = NULL; 

while (temp != NULL){
    nextP = temp->next;
    free(temp); 
    temp = nextP;
}

free(nodeP);
*list = NULL;


}