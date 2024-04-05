#include <stdio.h>
#include <stdlib.h>

// Define a structure for the linked list node
typedef struct ListNode {
    char data;
    struct ListNode *next;
} ListNode;

// Define the StringBuilder structure
typedef struct StringBuilder {
    ListNode *head; // Pointer to the head of the linked list
    int size;
} StringBuilder;

// Function to create and return a new StringBuilder
// O(1)
StringBuilder *newBuilder(void) {
    StringBuilder *sb = (StringBuilder *)malloc(sizeof(StringBuilder));
    if (sb == NULL) {
        return NULL;
    }
    sb->head = NULL; // Initialize head pointer to NULL
    sb->size = 0;
    return sb;
}

// Function to get the size of the StringBuilder
// O(1)
int getSize(StringBuilder *b) {
    if (b == NULL) {
        return 0;
    }
    return b->size;
}

// Function to append a character to the StringBuilder
// O(1)
int appendChar(StringBuilder *b, char c) {
    if (b == NULL) {
        return 0;
    }
    ListNode *newNode = (ListNode *)malloc(sizeof(ListNode));
    if (newNode == NULL) {
        return 0; // Memory allocation failed
    }
    newNode->data = c;
    newNode->next = b->head;
    b->head = newNode;
    b->size++;
    return 1;
}

// Function to get the last character of the StringBuilder
// O(1)
char lastChar(StringBuilder *b) {
    if (b == NULL || b->size == 0) {
        return '\0';
    }
    return b->head->data;
}

// Function to convert StringBuilder to dynamically allocated string
// O(n)
char *toStr(StringBuilder *b) {
    if (b == NULL || b->size == 0) {
        return NULL;
    }
    char *str = (char *)malloc((b->size + 1) * sizeof(char));
    if (str == NULL) {
        return NULL; // Memory allocation failed
    }
    ListNode *current = b->head;
    int i = 0;
    while (current != NULL) {
        str[i++] = current->data;
        current = current->next;
    }
    str[i] = '\0'; // Null-terminate the string
    return str;
}
// Function to find the last index of a character in the StringBuilder
// O(n)
int lastIndex(StringBuilder *b, char c) {
    if (b == NULL || b->size == 0) {
        return -1;
    }
    ListNode *current = b->head;
    int index = -1;
    int currentIndex = 0;
    while (current != NULL) {
        if (current->data == c) {
            index = currentIndex;
        }
        current = current->next;
        currentIndex++;
    }
    return index;
}


// Function to destroy the StringBuilder and free memory
// O(n)
void destroy(StringBuilder *b) {
    if (b != NULL) {
        ListNode *current = b->head;
        while (current != NULL) {
            ListNode *temp = current;
            current = current->next;
            free(temp);
        }
        free(b);
    }
}
