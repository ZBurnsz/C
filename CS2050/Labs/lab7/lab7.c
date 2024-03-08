#include "lab7.h"



struct VendingMachineNode {
    StockItem *item; 
    struct VendingMachine *next; 
}VendingMachineNode; 

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
the next slto of the linked list. 
success = 1 
failure = 0
*/
int addStockItem(VendingMachine *vm, StockItem item){
//assume no duplicates
//dont need to sort the items 
VendingMachine *newNode = (VendingMachine*)malloc(sizeof(VendingMachine));

if (newNode == NUll){
    return 0; 
}else{
    newNode-> = item; 
    newNode->next = VendingMachine; 


}




}
/*countExpensive:
this function takes a vending machine and returns the number of items even if one is out of stock. 
*/
int countItems(VendingMachine *vm){






}
/*countFull: 
this function takes a vending machine list and returns the number of items that = maxStock 
*/
int countFull(VendingMachine *vm){





}
/*getStockItem:
this function takes a vending machine list, an ID of an item and returns that item to the result pointer 
return 1 = success item found 
return 0 = no item with the ID found 
*/
int getStockItem(VendingMachine *vm, int ID, StockItem *result){





    
}
/*freeVendingMachine: 
this function takes a vendingMachine and frees the memory allocated to it
*/
void freeVendingMachine(VendingMachine *vm){




}