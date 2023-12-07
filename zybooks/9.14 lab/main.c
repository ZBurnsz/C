#include <stdio.h>
#include <string.h>
#include "ItemToPurchase.h"

int main(void) {
    struct ItemToPurchase item1, item2;
    char buffer[100];

    // Initialize items
    MakeItemBlank(&item1);
    MakeItemBlank(&item2);

    // Input for item 1
printf("Item 1\n");
printf("Enter the item name:\n");
fgets(buffer, sizeof(buffer), stdin);
buffer[strcspn(buffer, "\n")] = '\0';
strncpy(item1.itemName, buffer, sizeof(item1.itemName) - 1);
item1.itemName[sizeof(item1.itemName) - 1] = '\0';

printf("Enter the item price:\n");
fgets(buffer, sizeof(buffer), stdin);
sscanf(buffer, "%d", &item1.itemPrice);

printf("Enter the item quantity:\n");
fgets(buffer, sizeof(buffer), stdin);
sscanf(buffer, "%d", &item1.itemQuantity); 

// Input for item 2


    printf("\nItem 2\n");
    printf("Enter the item name:\n");
    fgets(buffer, sizeof(buffer), stdin);
    buffer[strcspn(buffer, "\n")] = '\0';
    strncpy(item1.itemName, buffer, sizeof(item1.itemName) - 1);
    item1.itemName[sizeof(item1.itemName) - 1] = '\0';

    printf("Enter the item price:\n");
    fgets(buffer, sizeof(buffer), stdin);
    sscanf(buffer, "%d", &item2.itemPrice);

    printf("Enter the item quantity:\n");
    fgets(buffer, sizeof(buffer), stdin);
    sscanf(buffer, "%d", &item2.itemQuantity);

    // Output
    printf("\nTOTAL COST\n");
    PrintItemCost(item1);
    PrintItemCost(item2);

    return 0;
}