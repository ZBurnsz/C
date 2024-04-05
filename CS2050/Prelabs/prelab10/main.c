#include "headers.h"

int main() {
    int error;
    
    // Initializing an empty list
    List myList = initEmptyList(&error);
    if (error) {
        printf("Error initializing list.\n");
        return 1;
    }
    
    // Inserting elements into the list
    int num1 = 10;
    insertHead(&num1, myList);
    
    int num2 = 20;
    insertTail(&num2, myList);
    
    // Getting and printing the length of the list
    printf("Length of the list: %d\n", getLength(myList));
    
    // Getting and printing the head object of the list
    int *headObject = (int *)getHeadObject(myList);
    if (headObject != NULL) {
        printf("Head of the list: %d\n", *headObject);
    } else {
        printf("List is empty.\n");
    }
    
    // Initializing an empty stack
    Stack myStack = initEmptyStack(&error);
    if (error) {
        printf("Error initializing stack.\n");
        return 1;
    }
    
    // Pushing elements onto the stack
    push(&num1, myStack);
    push(&num2, myStack);
    
    // Getting and printing the size of the stack
    printf("Size of the stack: %d\n", getStackSize(myStack));
    
    // Popping elements from the stack
    int *poppedElement1 = (int *)pop(myStack);
    int *poppedElement2 = (int *)pop(myStack);
    
    if (poppedElement1 != NULL) {
        printf("Popped element from the stack: %d\n", *poppedElement1);
    } else {
        printf("Stack is empty.\n");
    }
    
    if (poppedElement2 != NULL) {
        printf("Popped element from the stack: %d\n", *poppedElement2);
    } else {
        printf("Stack is empty.\n");
    }
    
    // Deleting the list and stack
    deleteList(myList);
    deleteStack(myStack);
    
    return 0;
}
