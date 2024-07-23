#include <stdio.h>
#include <stdlib.h>


//! BST
typedef struct BST {
    int data;
    struct BST *left;
    struct BST *right;
    int size;
} BST;

BST *createNode(int data) {
    BST *newNode = (BST *)malloc(sizeof(BST));
    newNode->data = data;
    newNode->left = NULL;
    newNode->right = NULL;
    newNode->size = 1;
    return newNode;
}

int insertBST_IfEmpty(BST *tree, int data) {
    if (tree == NULL) {
        fprintf(stderr, "Tree is empty (insertBST_IfEmpty)\n");
        return 1;
    }
    tree->data = data;
    tree->size = 1;
    tree->left = NULL;
    tree->right = NULL;
    return 0;
}

BST* BSTinsertHelper(BST *tree, int data) {
    if (tree == NULL) {
        BST* newBST = (BST*)malloc(sizeof(BST));
        if (newBST == NULL) {
            return NULL;
        }
        newBST->data = data;
        newBST->left = NULL;
        newBST->right = NULL;
        return newBST;
    }
    if (data < tree->data) {
        tree->left = BSTinsertHelper(tree->left, data);
    } else {
        tree->right = BSTinsertHelper(tree->right, data);
    }
    return tree;
}

int insertBST(BST *tree, int data) {
    if (tree == NULL) {
        fprintf(stderr, "Tree is empty (insertBST)\n");
        return 1;
    }
    if (tree->size == 0) {
        return insertBST_IfEmpty(tree, data);
    }
    if (BSTinsertHelper(tree, data) == NULL) {
        return 1;
    }
    tree->size++;
    return 0;


}


//!Binary Search 

int* createArray(int size) {
    int *array = (int *)malloc((size + 1) * sizeof(int));
    if (array == NULL) {
        fprintf(stderr, "Array allocation failed (createArray)\n");
        return NULL;
    }
    array[0] = size;
    return array + 1;
}

int getSize(int* array) {
    if (!array) {
        fprintf(stderr, "Array is empty (getSize)\n");
        return 0;
    }
    return array[-1];
}

void binarySearch(int *array, int size, int query) {
    if (array == NULL) {
        fprintf(stderr, "Array is empty (binarySearch)\n");
        return;
    }
    int left = 0;
    int right = size - 1;
    while (left <= right) {
        int mid = left + (right - left) / 2;
        if (array[mid] == query) {
            printf("Found at index %d\n", mid);
            return;
        } else if (array[mid] < query) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    printf("Not found\n");
}

int insertInArray(int* array, int data) {
    int size = getSize(array);
    int i;
    for (i = size - 1; (i >= 0 && array[i] > data); i--) {
        array[i + 1] = array[i];
    }
    array[i + 1] = data;
    array[-1]++;
    return 0;
}

void freeArray(int* array){
    free(array - 1);
}

//! array 






int main() {
    BST *root = createNode(10);
    insertBST(root, 5);
    insertBST(root, 15);
    insertBST(root, 2);

    int *array = createArray(5);
    insertInArray(array, 10);
    insertInArray(array, 5);
    insertInArray(array, 15);
    insertInArray(array, 2);
    int size = getSize(array);

    binarySearch(array, size, 15);
    binarySearch(array, size, 7);

    freeArray(array); // Correctly free the allocated memory

    return 0;
}
