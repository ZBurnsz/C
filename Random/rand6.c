#include <stdio.h>
#include <stdlib.h>



typedef struct BST{
    int data;
    struct BST *left;
    struct BST *right;
    int size; 
}BST;

int initBST(){
    BST *root = (BST *)malloc(sizeof(BST));

    root->data = 0; 
    root->left = NULL;
    root->right = NULL;

    return root; 
}

int insertBST(int key, int data){
    BST *root = initBST();
    BST *newNode = (BST *)malloc(sizeof(BST));



    newNode->data = data;
    newNode->left = NULL;
    newNode->right = NULL;

    if(root == NULL){
        root = newNode;
        root->size = 1;
        return 1;
    }
    BST *current = root;
    BST *parent = NULL;

    while(1){
        parent = current;

        if(key < parent->data){
            current = current->left;

            if(current == NULL){
                parent->left = newNode;
                parent->size++;
                return 1;
            }
        }else{
            current = current->right;

            if(current == NULL){
                parent->right = newNode;
                parent->size++;
                return 1;
            }
        }
    }




}


int main(){
    BST *root = initBST();
    insertBST(1, 10);
    insertBST(2, 20);
    insertBST(3, 30);
    insertBST(4, 40);
    insertBST(5, 50);
    insertBST(6, 60);
    insertBST(7, 70);
    insertBST(8, 80);
    insertBST(9, 90);
    insertBST(10, 100);
    insertBST(11, 110);
    insertBST(12, 120);
    insertBST(13, 130);
    insertBST(14, 140);
    insertBST(15, 150);
    insertBST(16, 160);
    insertBST(17, 170);
    insertBST(18, 180);
    insertBST(19, 190);
    insertBST(20, 200);
    insertBST(21, 210);
    insertBST(22, 220);
    insertBST(23, 230);
    insertBST(24, 240);
    insertBST(25, 250);
    insertBST(26, 260);
    insertBST(27, 270);
    insertBST(28, 280);
    insertBST(29, 290);
    insertBST(30, 300);
    insertBST(31, 310);
    insertBST(32, 320);
    insertBST(33, 330);
    insertBST(34, 340);
    insertBST(35, 350);
    insertBST(36, 360);
    insertBST(37, 370);
    insertBST(38, 380);
    insertBST(39, 390);
    insertBST(40, 400);
    insertBST(41, 410);
    insertBST(42, 420);
    insertBST(43, 430);
    insertBST(44, 440);
    insertBST(45, 450);
    insertBST(46, 460);
    insertBST(47, 470);
    insertBST(48, 480);
    insertBST(49, 490);
    insertBST(50, 500);
    insertBST(51, 510);
    insertBST(52, 520);
    insertBST(53, 530);
    insertBST(54, 540);


    return 0;
}