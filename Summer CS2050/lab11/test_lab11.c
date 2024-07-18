/*
CMP_SC 2050
Summer 2024
lab 11
by Zachary Burns 
July 18, 2024 
*/

#include <stdlib.h>
#include "lab11.h"
#include <stdio.h>



typedef struct BST{
    int data;
    struct BST* left;
    struct BST* right;
    int size; 
}BST;

/*initBST: 
this function initializes a BST and returns a pointer to that BST on success and NULL on failure. 
*/
BST * initBST(){
//! O(1)

    BST * bst = (BST *)malloc(sizeof(BST));

    if (bst == NULL){
        fprintf(stderr, "BST is NULL(initBST)\n");
        return NULL;
    }
    
    bst->size = 0; 
    bst->data = 0; 
    bst->left = NULL;
    bst->right = NULL;

    return bst;
}

/*instertBST: 
this function takes a BST and a data as input and inputs that data into the tree. 

*/
int insertBST(BST *tree, int data){
//! O(log(n))
//no need to check for duplicates 
//find middle if middle is > than int then you insert on right half if middle is < then you insert on left half 
//0 = success, 1 = failure
    if (tree == NULL) {
        fprintf(stderr, "Tree is empty(insertBST)\n");
        return 1;
    }

    if (tree->size == 0) {
        // Initialize the root node with the first data inserted
        tree->data = data;
        tree->size = 1;
        return 0;
    }

    BST* current = tree;
    BST* root = NULL;

    while (current != NULL) {
        root = current;
        if (data < current->data) {
            current = current->left;
        } else {
            current = current->right;
        }
    }

    BST* newNode = (BST*)malloc(sizeof(BST));
    if (newNode == NULL) {
        return 1;
    }

    newNode->data = data;
    newNode->left = NULL;
    newNode->right = NULL;

    if (data < root->data) {
        root->left = newNode;
    } else {
        root->right = newNode;
    }

    tree->size++;
    return 0;
}


/*getSizeBST: 
this function takes a BST and returns the size of the BST
*/
int getSizeBST(BST *tree){
//! O(1)
    if (tree == NULL){
        fprintf(stderr, "Tree is empty(getSizeBST)\n");
        return 1;
    }

    return tree->size; 

}
/*getMinBST: 
this function takes a BST and returns the minimum value from the tree. 

*/
int getMinBST(BST *tree){
//! O(log(n))

    if (tree == NULL){
        fprintf(stderr, "Tree is empty(getMinBST)\n");
        return 1;
    }
    if (tree->size == 0){
        fprintf(stderr, "Tree is empty(getMinBST)\n");
        return 1;
    }

    BST* current = tree;

    while (current->left != NULL){
        current = current->left;
    }
    return current->data;

}
/*postOrderPrintBST: 
this function takes a BST and prints the elements in post-order 

*/
void postOrderPrintBST(BST *tree){
//! O(n)
        if (tree == NULL){
            fprintf(stderr, "tree is empty (postOrder)\n");
            return;
        }

        postOrderPrintBST(tree->left);
        postOrderPrintBST(tree->right);
        printf("%d\n", tree->data);

}
/*inOrderPrintBST:
this function takes a BST and prints the elements in order. 
*/
void inOrderPrintBST(BST *tree){
//! O(n)

if (tree == NULL){
    fprintf(stderr, "tree is empty (inOrder)\n");
    return;
}

inOrderPrintBST(tree->left);
printf("%d\n",tree->data);
inOrderPrintBST(tree->right);

}


/*freeBST: 
this function takes a BST and frees the memory allocated to it. 
*/
void freeBST(BST *tree){
//! O(n)
if (tree == NULL){
    fprintf(stderr, "tree is empty (freeBST)\n");
    return;

}
freeBST(tree->left);
freeBST(tree->right);
free(tree);

}

