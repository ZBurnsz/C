#include "lab5.h"

int main() {
    int errorCode;
    GroceryList *myList = GroceryListInit(100, &errorCode);

    if (errorCode != 0) {
        printf("Error occurred with error code: %d\n", errorCode);
        return 1;
    }

    myList = GroceryListAppend(myList, "Apples", &errorCode);
    

    myList = GroceryListAppend(myList, "Bananas", &errorCode);
    

    GroceryListPrint(myList);

    char *item = GroceryListGetItem(myList, 2, &errorCode);
  
    printf("Item at index 2: %s\n", item);

    printf("Number of items: %d\n", GroceryCount(myList));

    GroceryListDelete(myList);

    return 0;
}