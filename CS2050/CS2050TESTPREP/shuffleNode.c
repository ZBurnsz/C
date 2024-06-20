#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Define the node structure
typedef struct Node {
    int data;
    struct Node* next;
} Node;

// Function to create a new node
Node* createNode(int data) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    if (newNode == NULL) {
        printf("Memory allocation failed!\n");
        exit(1);
    }
    newNode->data = data;
    newNode->next = NULL;
    return newNode;
}

// Function to insert a node at the end of the linked list
void insertAtEnd(Node** head, int data) {
    Node* newNode = createNode(data);
    if (*head == NULL) {
        *head = newNode;
        return;
    }
    Node* temp = *head;
    while (temp->next != NULL) {
        temp = temp->next;
    }
    temp->next = newNode;
}

// Function to display the linked list
void display(Node* head) {
    Node* temp = head;
    while (temp != NULL) {
        printf("%d -> ", temp->data);
        temp = temp->next;
    }
    printf("NULL\n");
}

// Function to count the number of nodes in the linked list
int countNodes(Node* head) {
    int count = 0;
    Node* temp = head;
    while (temp != NULL) {
        count++;
        temp = temp->next;
    }
    return count;
}

// Function to swap the data between two nodes
void swapData(Node* node1, Node* node2) {
    int temp = node1->data;
    node1->data = node2->data;
    node2->data = temp;
}

// Function to shuffle the linked list
void shuffleLinkedList(Node** head) {
    int n = countNodes(*head);
    if (n <= 1) return; // No need to shuffle if there's only one node or no nodes

    srand(time(NULL)); // Seed for random number generation

    // Traverse the linked list and perform swaps
    for (int i = 0; i < n; i++) {
        // Generate random indices within the range of the number of nodes
        int j = rand() % n;
        int k = rand() % n;

        // Find nodes at positions j and k
        Node* nodeJ = *head;
        Node* nodeK = *head;
        for (int l = 0; l < j; l++) nodeJ = nodeJ->next;
        for (int l = 0; l < k; l++) nodeK = nodeK->next;

        // Swap data between nodes at positions j and k
        swapData(nodeJ, nodeK);
    }
}

int main() {
    Node* head = NULL;

    // Inserting elements into the linked list
    insertAtEnd(&head, 10);
    insertAtEnd(&head, 20);
    insertAtEnd(&head, 30);
    insertAtEnd(&head, 40);
    insertAtEnd(&head, 50);

    // Displaying the original linked list
    printf("Original Linked List: ");
    display(head);

    // Shuffling the linked list
    shuffleLinkedList(&head);

    // Displaying the shuffled linked list
    printf("Shuffled Linked List: ");
    display(head);

    return 0;
}
