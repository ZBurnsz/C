#include "lab11.h"

// Structure to represent a node in the database
typedef struct Node_t {
    Car car;
    struct Node_t* left;
    struct Node_t* right;
} Node;

// Structure to represent the database
struct Database_t {
    Node* root;
};

// Helper function to create a new node
Node* createNode(Car car) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    if (newNode != NULL) {
        newNode->car = car;
        newNode->left = NULL;
        newNode->right = NULL;
    }
    return newNode;
}

// Helper function to perform inorder traversal and print SKUs
void inorderPrintSKU(Node* root) {
    if (root != NULL) {
        inorderPrintSKU(root->left);
        printf("%d", root->car.SKU);
        if (root->right != NULL) {
            printf(", ");
        }
        inorderPrintSKU(root->right);
    }
}

// Helper function to perform inorder traversal and print prices
void inorderPrintPrice(Node* root) {
    if (root != NULL) {
        inorderPrintPrice(root->left);
        printf("$%.2f", root->car.price);
        if (root->right != NULL) {
            printf(", ");
        }
        inorderPrintPrice(root->right);
    }
}

// Helper function to destroy the database recursively
void destroyDatabase(Node* root) {
    if (root != NULL) {
        destroyDatabase(root->left);
        destroyDatabase(root->right);
        free(root);
    }
}

// O(n^2)
Database* makeDatabase(Car* cars, int size) {
    Database* db = (Database*)malloc(sizeof(Database));
    if (db == NULL) {
        return NULL; // Memory allocation failed
    }
    db->root = NULL; // Initialize root node
    for (int i = 0; i < size; i++) {
        Node* current = db->root;
        Node* parent = NULL;
        Node* newNode = createNode(cars[i]);
        if (newNode == NULL) {
            destroy(db);
            return NULL; // Memory allocation failed
        }
        while (current != NULL) {
            parent = current;
            if (newNode->car.SKU < current->car.SKU) {
                current = current->left;
            } else {
                current = current->right;
            }
        }
        if (parent == NULL) {
            db->root = newNode;
        } else if (newNode->car.SKU < parent->car.SKU) {
            parent->left = newNode;
        } else {
            parent->right = newNode;
        }
    }
    return db;
}

// O(n)
void printSKU_Sorted(Database* db) {
    if (db == NULL || db->root == NULL) {
        return;
    }
    printf("SKUs: ");
    inorderPrintSKU(db->root);
    printf("\n");
}

// O(n)
void printPriceSorted(Database* db) {
    if (db == NULL || db->root == NULL) {
        return;
    }
    printf("Prices: ");
    inorderPrintPrice(db->root);
    printf("\n");
}

// O(log(n))
unsigned long long getPN_FromSKU(Database* db, int SKU) {
    if (db == NULL || db->root == NULL) {
        return -1;
    }
    Node* current = db->root;
    while (current != NULL) {
        if (SKU == current->car.SKU) {
            return current->car.OEM_PN;
        } else if (SKU < current->car.SKU) {
            current = current->left;
        } else {
            current = current->right;
        }
    }
    return -1;
}

// O(log(n))
int getSKU_FromPrice(Database* db, double price) {
    if (db == NULL || db->root == NULL) {
        return -1;
    }
    Node* current = db->root;
    while (current != NULL) {
        if (price == current->car.price) {
            return current->car.SKU;
        } else if (price < current->car.price) {
            current = current->left;
        } else {
            current = current->right;
        }
    }
    return -1;
}

// O(1)
void destroy(Database* db) {
    if (db != NULL) {
        destroyDatabase(db->root);
        free(db);
    }
}
