#ifndef ITEM_TO_PURCHASE_H
#define ITEM_TO_PURCHASE_H


struct ItemToPurchase {
    char itemName[50];
    int itemPrice;
    int itemQuantity;
};

void MakeItemBlank(struct ItemToPurchase item);
void PrintItemCost(struct ItemToPurchase item);

#endif
