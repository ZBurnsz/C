#include "lab7.h"



struct VendingMachine_t {
    int numSlots; 
    struct VendingMachine *next;  //change to linked list next pointer 
};




/*newMachine: 
this function uses a linked list to create a new empty vending machine 
and returns a pointer that linked list
*/
VendingMachine * newMachine(){
    VendingMachine *vm = (VendingMachine*)malloc(sizeof(VendingMachine));

 if (vm == NULL) {
        *errorCode = 1;
    } else {
        *errorCode = 0;
        vm->numSlots = 0; //initialize the object to 0 start of list 
        vm->next = NULL; //end of list is NULL
    }
    return list


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