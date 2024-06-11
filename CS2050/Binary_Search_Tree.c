#include <stdio.h> 
#include <stdlib.h>
#include <stdbool.h>

typedef struct node{
    int data; 
    struct node *left; 
    struct node *right;
}node;

node *createNode(int data){
    node *newNode = (node *)malloc(sizeof(node)); 
    newNode->data = data; 
    newNode->left = NULL; 
    newNode->right = NULL; 
    return newNode; 
}

node *insert(node *root, int data){
    if (root == NULL){
        return createNode(data); 
    }
    if (data < root->data){
        root->left = insert(root->left, data); 
    }
    else if (data > root->data){
        root->right = insert(root->right, data); 
    }
    return root; 
}

bool search(node *root, int data){
    if (root == NULL){
        return false; 
    }
    if (root->data == data){
        return true; 
    }
    if (data < root->data){
        return search(root->left, data); 
    }
    else{
        return search(root->right, data); 
    }
}

void preorder(node *root){
    if (root != NULL){
        printf("%d ", root->data); 
        preorder(root->left); 
        preorder(root->right); 
    }
}

void inorder(node *root){
    if (root != NULL){
        inorder(root->left); 
        printf("%d ", root->data); 
        inorder(root->right); 
    }
}

void postorder(node *root){
    if (root != NULL){
        postorder(root->left); 
        postorder(root->right); 
        printf("%d ", root->data); 
    }
}

int main(void){
    node *root = NULL; 
    root = insert(root, 50); 
    insert(root, 30); 
    insert(root, 20); 
    insert(root, 40); 
    insert(root, 70); 
    insert(root, 60); 
    insert(root, 80); 
    printf("Inorder: "); 
    inorder(root); 
    printf("\nPreorder: "); 
    preorder(root); 
    printf("\nPostorder: "); 
    postorder(root); 
    printf("\n"); 
    if (search(root, 40)){
        printf("40 is in the tree\n"); 
    }
    else{
        printf("40 is not in the tree\n"); 
    }
    if (search(root, 100)){
        printf("100 is in the tree\n"); 
    }
    else{
        printf("100 is not in the tree\n"); 
    }
    return 0; 
}

