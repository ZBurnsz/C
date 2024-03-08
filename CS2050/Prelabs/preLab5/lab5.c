    #include "lab5.h"


GroceryList *GroceryListInit(int maxLength, int *errorCode){
//memory for grocery list
GroceryList *glist = (GroceryList *)malloc(sizeof(GroceryList));

//check memory
if(glist == NULL){
    *errorCode = printf("Error: Memory allocation failed 1\n");
    return NULL;
}
//memory for items 
glist->items = (char **)malloc(maxLength * sizeof(char *));
//check memory 
if(glist->items == NULL){
    *errorCode = printf("Error: Memory allocation failed 2\n");
    free(glist);
    return NULL;
}


for (int i = 0; i < maxLength; i++){
    glist->items[i] = NULL;
}

glist -> maxLength = maxLength;
glist -> length = 0; 
*errorCode = 0;

return glist;



}
GroceryList *GroceryListAppend(GroceryList *glist, char *itemName, int *errorCode){


glist->items[glist->length] = (char *)malloc((strlen(itemName) + 1) * sizeof(char));  //allows me to store a new string in the list, and allocates memory for that item. 


//copy that item into the list, then increase the list length. 
strcpy (glist->items[glist->length], itemName);
glist->length++;
*errorCode = 0;
return glist;
}

char *GroceryListGetItem(GroceryList *glist, int k, int *errorCode){
    
    if (k < 0){
        *errorCode = printf("Error: Index out of bounds\n");
        return NULL;
    }else {
        *errorCode = 0;
        return glist->items[k - 1]; //returns the item at the index k.
    }


}


int GroceryCount(GroceryList *glist){
return glist->length;
}

void GroceryListPrint(GroceryList *glist){

for (int i = 0; i < glist->length; i++){
    printf("%s, ", glist->items[i]);
}
printf("\n");
return; 
}



void GroceryListDelete(GroceryList *glist){
for (int i = 0; i < glist->length; i++){
    free(glist->items[i]);
}
free(glist->items);
free(glist);
}

