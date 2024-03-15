#include <stdio.h>
#include <stdlib.h>

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


//new functions from prelab 8 

List *insertAtPosition(int pos, int key, List *list, int *errorCode) {
    int length = getListLength(list);
    
    // Check for invalid position
    if (pos < 1 || pos > length + 1) {
        *errorCode = 1; // Indicate failure
        return list;
    }

    // Inserting at the head
    if (pos == 1) {
        return insertAtHead(key, list, errorCode);
    }

    // Inserting at other positions
    List *current = list;
    int count = 1;
    while (current != NULL) {
        if (count == pos - 1) {
            List *newNode = malloc(sizeof(List));
            if (newNode == NULL) {
                *errorCode = 1; // Indicate failure
                return list;
            }
            newNode->object = key;
            newNode->next = current->next;
            current->next = newNode;
            *errorCode = 0; // Indicate success
            return list;
        }
        current = current->next;
        count++;
    }
    return list; // Should not reach here under normal circumstances
}

int getAtPosition(int pos, List *list, int *errorCode) {
    int length = getListLength(list);
    
    // Check for invalid position
    if (pos < 1 || pos > length) {
        *errorCode = 1; // Indicate failure
        return -1;
    }

    List *current = list;
    int count = 1;
    while (current != NULL) {
        if (count == pos) {
            *errorCode = 0; // Indicate success
            return current->object;
        }
        current = current->next;
        count++;
    }
    return -1; // Should not reach here under normal circumstances
}

List *removeAtPosition(int pos, List *list, int *errorCode) {
    int length = getListLength(list);
    
    // Check for invalid position
    if (pos < 1 || pos > length) {
        *errorCode = 1; // Indicate failure
        return list;
    }

    // Removing at the head
    if (pos == 1) {
        List *temp = list;
        list = list->next;
        free(temp);
        *errorCode = 0; // Indicate success
        return list;
    }

    // Removing at other positions
    List *current = list;
    int count = 1;
    while (current != NULL) {
        if (count == pos - 1) {
            List *temp = current->next;
            current->next = temp->next;
            free(temp);
            *errorCode = 0; // Indicate success
            return list;
        }
        current = current->next;
        count++;
    }
    return list; // Should not reach here under normal circumstances
}

List *removeObject(int obj, List *list, int *errorCode) {
    List *current = list;
    List *prev = NULL;

    while (current != NULL) {
        if (current->object == obj) {
            // If the object to be removed is at the head
            if (prev == NULL) {
                List *temp = list;
                list = list->next;
                free(temp);
                current = list; // Update current to the new head
            } else {
                prev->next = current->next;
                free(current);
                current = prev->next; // Move current to the next node
            }
            *errorCode = 0; // Indicate success
        } else {
            prev = current;
            current = current->next;
        }
    }
    return list;
}



List *freeList(List *list) {
    List *current = list;
    while (current != NULL) {
        List *temp = current;
        current = current->next;
        free(temp);
    }
    return NULL;
}

