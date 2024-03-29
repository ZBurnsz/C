#include "lab7.h"
//USED LAB 5 AS REFERENCE
//used prelab 6 / 7 as reference. 


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
        vm->numSlots = 0; 
        vm->head = NULL; 
    }
    return vm; 

}
/*addStockItem 
this funciton takes a a vendingMachine and an item and inserts that item into
the next slot of the linked list. 
success = 1 
failure = 0
*/

int addStockItem(VendingMachine *vm, StockItem item){
//assume no duplicates
//dont need to sort the list 

 struct VendingMachineNode *newNode = (struct VendingMachineNode*)malloc(sizeof(struct VendingMachineNode));


    if (newNode == NULL){
        return 0; 
    }
    newNode->item = &item;  //probably not gonna work; 
    newNode->next = vm->head; 
    vm->head = newNode; 
    vm->numSlots++; 
    return 1; 
}

/*countExpensive:
this function takes a vending machine and returns the number of items even if one is out of stock. 
*/
int countItems(VendingMachine *vm){

int count = 0; 

struct VendingMachineNode *current = vm->head; 
while (current != NULL){
    count++;
    current = current->next; 
}

return count;
}
/*countFull: 
this function takes a vending machine list and returns the number of items that = maxStock 
*/
int countFull(VendingMachine *vm){
int count = 0; 

struct VendingMachineNode *current = vm -> head; 

while (current != NULL){
    if (current->item->stock == current->item->maxStock){
        count++; 
    }
    current = current->next; 
}
return count; 
}
/*getStockItem:
this function takes a vending machine list, an ID of an item and returns that item to the result pointer 
return 1 = success item found 
return 0 = no item with the ID found 
*/
int getStockItem(VendingMachine *vm, int ID, StockItem *result){


struct VendingMachineNode *current = vm->head;

while (current != NULL){
    if (current->item->ID == ID){
        *result = *(current->item);
        return 1; 
    }
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
    free(temp);
}

free(vm);
}
//