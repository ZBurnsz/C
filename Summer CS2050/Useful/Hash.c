#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TABLE_SIZE 10

// Node structure for the linked list
typedef struct Node {
    int key;
    int value;
    struct Node* next;
} Node;

// Hash table as an array of pointers to Nodes
Node* hashTable[TABLE_SIZE];

// Hash function to map keys to table indices
unsigned int hash(int key) {
    return key % TABLE_SIZE;
}

// Insert a key-value pair into the hash table
void insert(int key, int value) {
    unsigned int index = hash(key);
    Node* newNode = (Node*)malloc(sizeof(Node));
    newNode->key = key;
    newNode->value = value;
    newNode->next = hashTable[index];
    hashTable[index] = newNode;
}

// Search for a value by key in the hash table
int search(int key) {
    unsigned int index = hash(key);
    Node* current = hashTable[index];
    while (current) {
        if (current->key == key) {
            return current->value;
        }
        current = current->next;
    }
    return -1; // Key not found
}

// Delete a key-value pair from the hash table
void delete(int key) {
    unsigned int index = hash(key);
    Node* current = hashTable[index];
    Node* prev = NULL;
    while (current) {
        if (current->key == key) {
            if (prev) {
                prev->next = current->next;
            } else {
                hashTable[index] = current->next;
            }
            free(current);
            return;
        }
        prev = current;
        current = current->next;
    }
}

// Print the contents of the hash table
void printTable() {
    for (int i = 0; i < TABLE_SIZE; i++) {
        Node* current = hashTable[i];
        if (current == NULL) {
            printf("Table[%d] is empty.\n", i);
        } else {
            printf("Table[%d]: ", i);
            while (current) {
                printf("(Key: %d, Value: %d) -> ", current->key, current->value);
                current = current->next;
            }
            printf("NULL\n");
        }
    }
}

int main() {
    // Initialize the hash table
    for (int i = 0; i < TABLE_SIZE; i++) {
        hashTable[i] = NULL;
    }

    // Insert key-value pairs into the hash table
    insert(1, 10);
    insert(2, 20);
    insert(3, 30);
    insert(12, 120);
    insert(22, 220);

    // Print the hash table
    printTable();

    // Search for a key
    int value = search(22);
    if (value != -1) {
        printf("Found value: %d\n", value);
    } else {
        printf("Key not found.\n");
    }

    // Delete a key
    delete(12);
    printTable();

    return 0;
}
