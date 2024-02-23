#include "lab5.h"

//struct StockItem
//int id
//int stock 
//int maxStock 
//float price 

struct VendingMachine_t {
    int numSlots; 
    StockItem *slots;
};


/*newMachine: 
creates an empty array of slots set to an ID of 0 
this function returns a pointer to the new array or NULL if failure. 
*/
VendingMachine * newMachine(int numSlots){

VendingMachine *vm = (VendingMachine *)malloc(sizeof(VendingMachine));

if (vm == NULL){
    return NULL; 
}

//memory for slots
vm -> slots = (StockItem *)malloc(numSlots * sizeof(StockItem));
if (vm -> slots == NULL){
    return NULL; 
}


vm -> numSlots = numSlots; 
//set all values to 0; 
for (int i = 0; i < numSlots; i++){ 
vm->slots[i].ID = 0;
vm->slots[i].stock = 0; 
vm->slots[i].maxStock = 0; 
vm->slots[i].price = 0.0; 
}


return vm; 
}
/*addStockItem 
this funciton takes a a vendingMachine and an item and inserts that item into the first empty slot.
success = 1 
failure = 0
*/
int addStockItem(VendingMachine *vm, StockItem item){


//if ID == 0 (empty slot), put item in that slot and turn ID of that slot to 1 (full)
for (int i = 0; i < vm -> numSlots; i++){
    if(vm->slots[i].ID == 0){
        vm -> slots[i] = item; 
        vm -> slots[i].ID = 1; 
        return 1; 
    } 
    
    {
    return 0; 
}

}

}
/*countExpensive:
this function takes a vending machine and returns the NUMBER of items with a price >=3
*/
int countExpensive(VendingMachine *vm){
//count variable
int count = 0; 
//if price >= 3 increase count
for (int i = 0; i < vm -> numSlots; ++i){
    if(vm -> slots[i].price >= 3){ 
        count++; 
    }
    
}
//return number  
return count; 

}
/*removeStockItem: 
this function takes a vendingMachine, and an ID, if an item with the ID is there then that item is removed from the list ( = 0). 
success = 1; 
failure = 0; 
*/
int removeStockItem(VendingMachine *vm, int ID, StockItem *result){

for (int i = 0; i < vm -> numSlots; ++i){
    if (vm -> slots[i].ID == ID){ 
        vm -> slots[i].stock = 0; 
        vm -> slots[i].ID = 0; 
        vm -> slots[i].price = 0.0; 

        return 1; 
    }else { 
        return 0; 
    }
}



}
/*freeVendingMachine: 
this function takes a vendingMachine and frees the memory allocated to it
*/
void freeVendingMachine(VendingMachine *vm){

free(vm); 
vm = NULL; 


}