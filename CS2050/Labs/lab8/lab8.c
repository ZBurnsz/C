#include "lab8.h"


typedef struct vendingMachineNode VendingMachineNode; 

struct VendingMachineNode {
    StockItem *item; 
    struct VendingMachineNode *next; 
}; 

struct VendingMachine_t{
    int numSlots; 
    struct VendingMachineNode *head; 
};

/*newMachine: 
this function uses a linked list to create a new empty vending machine 
and returns a pointer that linked list
*/
VendingMachine * newMachine(){
    VendingMachine *vm = (VendingMachine*)malloc(sizeof(VendingMachine));
 if (vm == NULL) {
    return NULL; 

    } else {
        vm->head = NULL; 
    }
    return vm; 

}
/*addStockItem 
this funciton takes a a vendingMachine and an item and inserts that item into
the next slot after the given ID if ID > 0 if ID is <= 0 it insterts new item at the head of the list. 
If ID not found item is added at the end of the list. 
success = 1 
failure = 0
*/
int addStockItem(VendingMachine *vm, StockItem item, int afterID){

 struct VendingMachineNode *newNode = (struct VendingMachineNode*)malloc(sizeof(struct VendingMachineNode));

if (newNode == NULL){
    return 0; 
}
newNode -> item = (StockItem*)malloc(sizeof(StockItem));
*(newNode->item) = item; 
newNode -> next = NULL; 



//insert new item at head of list if less than 0
if (afterID <= 0 || vm->head == NULL){
    newNode -> next = vm->head; 
    vm->head = newNode; 
    return 1; 
}


struct VendingMachineNode* current = vm->head;
//put after the afterID node that is found.  
while (current != NULL){
    if (current->item->ID == afterID){
        newNode->next = current->next; 
        current->next = newNode; 
        return 1; 
    }
    current = current -> next; 
}

//if not found insert at end 
current = vm->head; 
while(current != NULL){
    current = current -> next; 
}
current->next = newNode; 
return 1; 


}


/*printIDS
this function takes a vendingmachine and prints the ID for each item in the VM. 
*/
void printIDS(VendingMachine *vm){
//all in 1 line seperated by commas \n at end 
if (vm == NULL){
    printf("Vending Machine is empty\n");
    return;
    }
struct VendingMachineNode *current = vm->head; 

while(current != NULL){
printf("%d, ", current->item->ID);
current = current->next; 
}

printf("\n");

}
/*purchaseItem 
this functins takes an vendingmachine and an ID and decrements the stock of that item by 1 if found. 
If item was not found then return 0. 
*/
int purchaseItem(VendingMachine *vm, int ID){

if (vm == NULL){
    return 0; 
}

struct VendingMachineNode *current = vm -> head; 

while (current != NULL){
    if (current->item->ID == ID){
        if (current->item->stock > 0){
            current->item->stock--;
            return 1; 
        }else {
            return 0; 
        }
    }
    current = current->next; 
}
return 0; 

}
/*removeStockItem
this function takes a vendingmachine, an ID and a result pointer. If the item ID was found it will update 
the result pointer with the stock item and remove that item from the vendingmachine. If item ID is not found return 0; 
*/
int removeStockItem(VendingMachine *vm, int ID, StockItem *result){

if (vm == NULL){
    return 0; 
}


struct VendingMachineNode *current = vm->head; 
struct VendingMachineNode *before = NULL;


while (current != NULL){
    if (current->item->ID == ID){
         *result = *(current->item);
         if (before != NULL){
            before->next = current -> next; 

         }else {
            vm->head = current->next; 
         }
         return 1; 
    }
    before = current; 
    current = current->next; 
}


return 0; 

}

/*freeVendingMachine: 
this function takes a vendingMachine and frees the memory allocated to it
*/
void freeVendingMachine(VendingMachine *vm){

struct VendingMachineNode *current = vm->head; 
while(current != NULL){
    struct VendingMachineNode *temp = current; 
    current = current->next; 
    free(temp->item);
    free(temp);
}

free(vm);
}


