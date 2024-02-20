#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char list[100];
    int maxLength;
    int length;
} GroceryList;

GroceryList *GroceryListInit(int maxLength, int *errorCode);
GroceryList *GroceryListAppend(GroceryList *glist, char *itemName, int *errorCode);
char *GroceryListGetItem(GroceryList *glist, int k, int *errorCode);

