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
VendingMachine * newMachine(void){






}
/*addStockItem 
this funciton takes a a vendingMachine and an item and inserts that item into
the next slot after the given ID if ID > 0 if ID is <= 0 it insterts new item at the head of the list. 
If ID not found item is added at the end of the list. 
success = 1 
failure = 0
*/
int addStockItem(VendingMachine *vm, StockItem item, int afterID){





}
/*printIDS
this function takes a vendingmachine and prints the ID for each item in the VM. 



*/
void printIDS(VendingMachine *vm){
//all in 1 line seperated by commas \n at end 








}
/*purchaseItem 
this functins takes an vendingmachine and an ID and decrements the stock of that item by 1 if found. 
If item was not found then return 0. 
*/
int purchaseItem(VendingMachine *vm, int ID){






}
/*removeStockItem
this function takes a vendingmachine, an ID and a result pointer. If the item ID was found it will update 
the result pointer with the stock item and remove that item from the vendingmachine. If item ID is not found return 0; 
*/
int removeStockItem(VendingMachine *vm, int ID, StockItem *result){







}

/*freeVendingMachine: 
this function takes a vendingMachine and frees the memory allocated to it
*/
void freeVendingMachine(VendingMachine *vm){








}
