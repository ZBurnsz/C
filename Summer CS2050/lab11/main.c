#include <assert.h>
#include <stdio.h>
#include "lab11.h"


void testBST() {
    // Test initBST
    BST *tree = initBST();
    assert(tree != NULL);

    // Test insertBST
    insertBST(tree, 50);
    insertBST(tree, 30);
    insertBST(tree, 70);
    insertBST(tree, 20);
    insertBST(tree, 40);
    insertBST(tree, 60);
    insertBST(tree, 80);

    // Test getSizeBST
    assert(getSizeBST(tree) == 7);

    // Test getMinBST
    assert(getMinBST(tree) == 20);

    // Test postOrderPrintBST
    printf("Post-order traversal:\n");
    postOrderPrintBST(tree);

    // Test inOrderPrintBST
    printf("In-order traversal:\n");
    inOrderPrintBST(tree);

    // Test freeBST
    freeBST(tree);
}

int main() {
    testBST();
    return 0;
}