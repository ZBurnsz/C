#include <stdio.h>
#include "lab7.h"

int main() {
    // Create a new vending machine
    VendingMachine *vm = newMachine();

    // Add some stock items
    StockItem item1 = {1, 10, 20, 1.5}; // Example stock item
    StockItem item2 = {2, 5, 10, 2.0};   // Example stock item
    addStockItem(vm, item1);
    addStockItem(vm, item2);

    // Count the total number of items
    printf("Total number of items: %d\n", countItems(vm));

    // Count the number of items that are full
    printf("Number of full items: %d\n", countFull(vm));

    // Get a stock item by ID
    StockItem result;
    int itemID = 1; // ID of the item to retrieve
    int success = getStockItem(vm, itemID, &result);
    if (success) {
        printf("Item found: ID %d, Stock %d, Max Stock %d, Price %.2f\n", result.ID, result.stock, result.maxStock, result.price);
    } else {
        printf("Item with ID %d not found\n", itemID);
    }

    // Free the vending machine memory
    freeVendingMachine(vm);

    return 0;
}
