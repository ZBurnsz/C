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

/*insertBST_IfEmpt:
a function that is called by insertBST if the tree called is empty 
*/
int insertBST_IfEmpty(BST *tree, int data){
    if (tree == NULL){
        fprintf(stderr, "Tree is empty(insertBSTIfEmpty)\n");
        return 1;
    }

    tree->data = data; 
    tree->size = 1;
	tree->left = NULL;
	tree->right = NULL;

    return 0;

}

/*BSTinsertHelper:
a function that is called by insertBST to insert the new data
handles the recursion. 
*/
BST* BSTinsertHelper(BST *tree, int data){
    if(tree == NULL){

        BST* newBST = (BST*)malloc(sizeof(BST));

        if (newBST == NULL){
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
/*instertBST: 
this function takes a BST and a data as input and inputs that data into the tree. 
*/
int insertBST(BST *tree, int data){
//! O(log(n))
//0 = success, 1 = failure
    if (tree == NULL) {
        fprintf(stderr, "Tree is empty(insertBST)\n");
        return 1;
    }

    if (tree->size == 0) {
        return insertBST_IfEmpty(tree, data);
    }

    if (BSTinsertHelper(tree, data) == NULL){
        return 1;
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

/*postHelper: 
a function helper for the postOrderPrintBST that does all the work for the function
*/
void postHelper(BST *tree){
//! O(n)
    if (tree == NULL){
		fprintf(stderr,"tree is NULL (postHelper)\n");
        return;
    }
    postHelper(tree->left);
    postHelper(tree->right);
    printf("%d\n", tree->data);

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

        return postHelper(tree);

}
/*inOrderHelper:
just a simple function helper to do the work for the inOrderprintBST function; 
*/
void inOrderHelper(BST *tree){
	if (tree == NULL){
		fprintf(stderr,"tree is NULL (inOrderHelper)\n");
        return;
    }

	inOrderPrintBST(tree->left);
	printf("%d\n",tree->data);
	inOrderPrintBST(tree->right);

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

return inOrderHelper(tree);

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

