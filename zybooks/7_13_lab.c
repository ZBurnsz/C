#include <stdio.h>
#include <stdlib.h>

typedef struct IntNode_struct {
   int dataVal;
   struct IntNode_struct* nextNodePtr;
} IntNode;

// Initialization
void InitializeIntNode(int dataInit, IntNode* thisNode) {
   thisNode->dataVal = dataInit;
   thisNode->nextNodePtr = NULL;
}

// Get node value
int GetNodeData(IntNode* thisNode) {
   return thisNode->dataVal;
}

// Get pointer to next node
IntNode* GetNext(IntNode* thisNode) {
   return thisNode->nextNodePtr;
}

index = IndexOfIntNode(headNode, 22);
printf("%d\n", index);

index = IndexOfIntNode(headNode, 30);
printf("%d\n", index);


void InsertAfter(IntNode* thisNode, IntNode* newNode) {
   IntNode* tempNext = NULL;

   tempNext = thisNode->nextNodePtr;
   thisNode->nextNodePtr = newNode;
   newNode->nextNodePtr = tempNext;
}

// Return index of target item
int IndexOf(IntNode* headNode, int target) {
IntNode* currNode = headNode;
int index = 0;

while (currentNode !=NULL){
    if (currNode->dataVal == target){
        return index;
    }
    currNode = currNode->nextNodePtr;
    index++;
}
return -1;


}

int main() {
   IntNode* headNode;
   IntNode* currNode;
   IntNode* lastNode;
   int index;

   // Initiaize head node
   headNode = (IntNode*)malloc(sizeof(IntNode));
   InitializeIntNode(-1, headNode);
   lastNode = headNode;

   // Add nodes to the list
   for (int i = 0; i < 20; ++i) {
      currNode = (IntNode*)malloc(sizeof(IntNode));
      InitializeIntNode(i, currNode);
      InsertAfter(lastNode, currNode);
      lastNode = currNode;
   }

   index = IndexOf(headNode, 15);
   printf("%d\n", index);

   return 0;
}
