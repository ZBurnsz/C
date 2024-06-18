#include <stdio.h>
#include "lab4.h"
#include <stdlib.h>

int main() {
    int numItems = 5;
    InventoryItem* inventory = (InventoryItem*)makeArray(numItems, sizeof(InventoryItem));
    if (inventory == NULL) {
        return 1;
    }

    // Initialize inventory items
    for (int i = 0; i < numItems; i++) {
        inventory[i].ID = i + 1;
        inventory[i].weight = (float)(i * 1.5);
        inventory[i].stockCount = i * 10;
        inventory[i].colors = (short)(i % 3);
    }

    // Count items with a specific number of colors
    short targetColorCount = 1;
    int count = countWithColors(inventory, targetColorCount);
    printf("Number of items with %d colors: %d\n", targetColorCount, count);

    // Free the allocated memory
    freeArray(inventory);

    return 0;
}
