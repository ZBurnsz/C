#include <stdio.h>
#include "ItemToPurchase.h"
#include <string.h>

void MakeItemBlank(struct ItemToPurchase item) {
    strcpy(item.itemName, "none");
    item.itemPrice = 0;
    item.itemQuantity = 0;
}
        
void PrintItemCost(struct ItemToPurchase item) {
    printf("%s %d @ $%d = $%d\n", item.itemName, item.itemQuantity, item.itemPrice, (item.itemPrice * item.itemQuantity));
}
