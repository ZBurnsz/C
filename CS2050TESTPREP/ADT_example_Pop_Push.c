#include <stdio.h>
#include <stdlib.h>

// Define the stack structure
#define MAX_SIZE 100

typedef struct {
    int items[MAX_SIZE];
    int top;
} Stack;

// Function to initialize the stack
void initialize(Stack *stack) {
    stack->top = -1;
}

// Function to check if the stack is empty
int isEmpty(Stack *stack) {
    return (stack->top == -1);
}

// Function to check if the stack is full
int isFull(Stack *stack) {
    return (stack->top == MAX_SIZE - 1);
}

// Function to push an element onto the stack
void push(Stack *stack, int value) {
    if (isFull(stack)) {
        printf("Stack overflow!\n");
        return;
    }
    stack->items[++stack->top] = value;
}

// Function to pop an element from the stack
int pop(Stack *stack) {
    if (isEmpty(stack)) {
        printf("Stack underflow!\n");
        return -1; // Returning -1 assuming stack contains positive values
    }
    return stack->items[stack->top--];
}

// Function to get the top element of the stack without removing it
int peek(Stack *stack) {
    if (isEmpty(stack)) {
        printf("Stack is empty!\n");
        return -1; // Returning -1 assuming stack contains positive values
    }
    return stack->items[stack->top];
}

int main() {
    Stack stack;
    initialize(&stack);

    push(&stack, 10);
    push(&stack, 20);
    push(&stack, 30);

    printf("Top element: %d\n", peek(&stack)); // Should print 30

    printf("Popped element: %d\n", pop(&stack)); // Should print 30
    printf("Popped element: %d\n", pop(&stack)); // Should print 20

    printf("Top element: %d\n", peek(&stack)); // Should print 10

    return 0;
}
