#include <stdio.h>
#include "lab7.h"

// Function prototypes for test cases
void test_push_and_pop();
void test_stack_contains();

int main() {
    // Run each test case
    test_push_and_pop();
    test_stack_contains();

    return 0;
}

void test_push_and_pop() {
  printf("Testing pushStack and popStack:\n");

  Stack *s = initStack();

  // Test pushing elements
  int data1 = 10;
  int data2 = 20;
  int data3 = 30;

  pushStack(s, &data1);
  pushStack(s, &data2);
  pushStack(s, &data3);

  // Verify stack size and top element
  printf("Stack size after pushing: %d\n", getSize(s));
  printf("Top element after pushing: %d\n", *(int*)peekStack(s));

  // Test popping elements
  printf("Popped: %d\n", *(int*)popStack(s));
  printf("Popped: %d\n", *(int*)popStack(s));
  printf("Popped: %d\n", *(int*)popStack(s));

  // Check for empty stack before dereferencing
  void *data = popStack(s);
  if (data == NULL) {
    printf("Stack is empty\n");
  } else {
    printf("Popped: %d\n", *(int*)data); // Assuming data is an integer
  }

  // Verify stack size after popping all elements
  printf("Stack size after popping: %d\n", getSize(s));

  freeStack(s);
}


void test_stack_contains() {
    printf("\nTesting stackContains:\n");

    Stack *s = initStack();

    // Push some data into the stack
    int data1 = 10;
    int data2 = 20;
    int data3 = 30;

    pushStack(s, &data1);
    pushStack(s, &data2);

    // Test stackContains with existing and non-existing data
    int checkData = 20;
    int checkData2 = 40;

    printf("Stack contains %d: %s\n", checkData, stackContains(s, &checkData) ? "true" : "false");
    printf("Stack contains %d: %s\n", checkData2, stackContains(s, &checkData2) ? "true" : "false");

    // Pop elements from stack
    popStack(s);
    popStack(s);

    // Test empty stack case
    printf("Stack contains %d (empty stack): %s\n", checkData, stackContains(s, &checkData) ? "true" : "false");

    freeStack(s);
}
