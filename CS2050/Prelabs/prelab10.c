#include <stdio.h>
#include <stdlib.h>

typedef struct stack {
    void * data;
    struct stack * next;
} Stack;

Stack * top = NULL;

/* This function returns an empty stack. */
Stack* initEmptyStack() {
    Stack* newStack = malloc(sizeof(Stack));
    if (newStack == NULL) {
        return NULL;
    }
    newStack->data = NULL; // Assuming data is a pointer type
    newStack->next = NULL; // Initialize next pointer as NULL for empty stack
    return newStack;
}

/* This function pushes the user’s object onto the stack. Returns error code. */
int push(void *data, Stack *top) {
    Stack * newNode = malloc(sizeof(Stack));
    if (newNode == NULL) {
        return -1; // Memory allocation failure
    }
    newNode->data = data;
    newNode->next = top;
    top = newNode;
    return 0;
}

/* This function pops from the stack. NULL is returned if the stack is empty. */
void * pop(Stack **top) {
    if (*top == NULL) {
        return NULL; // Stack is empty
    }
    Stack * temp = *top;
    void * poppedData = temp->data;
    *top = (*top)->next;
    free(temp);
    return poppedData;
}

/* This function returns the number of objects on the stack. */
int getStackSize(Stack *top) {
    int count = 0;
    Stack *temp = top;
    while (temp != NULL) {
        count++;
        temp = temp->next;
    }
    return count;
}

/* This function deletes the Stack and returns nothing. */
void deleteStack(Stack *top) {
    while (top != NULL) {
        Stack * temp = top;
        top = top->next;
        free(temp);
    }
}

int main() {
    Stack *newStack = initEmptyStack(); // Correctly assign the pointer to Stack

    int someInteger = 1; // Declare an integer variable
    push(&someInteger, newStack); // Pass the address of the integer variable

    // Pop from the stack
    void *poppedData = pop(&newStack);
    if (poppedData != NULL) {
        int *poppedInteger = (int *)poppedData; // Cast the void* to int*
        printf("Popped element: %d\n", *poppedInteger);
    }

    // Print the size of the stack
    printf("The size of the stack is: %d\n", getStackSize(newStack));

    // Clean up the stack
    deleteStack(newStack);

    return 0;
}
