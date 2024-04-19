#include "lab11.h"

typedef struct Database_t{
Car *cars;
int size; 

}Database;

typedef struct Car_t Car;


/*makeDatabase:
this function makes an array of cars using a size input and 
returns a pointer to a new array of cars 
*/
Database * makeDatabase(Car *cars, int size){
// O(n^2)
Database *db = (Database*)malloc(sizeof(Database));

if (db == NULL){
    return NULL; 
}

db->cars = cars; 
db->size = size; 

return db; 

}

/*printfSKU_Sorted:
this function takes a database and prints all the SKU's of all the cars in ascending order 
*/
void printSKU_Sorted(Database *db){
// O(n)
//SKUs: 10057, 10081, 20099
if (db == NULL || db->cars == NULL || db->size <= 0){
    return;
}

int max = db->cars[0].SKU;
for (int i = 0; i < db->size; i++ ){
    if (db->cars[i].SKU > max){
        max = db->cars[i].SKU;
    }
}
int *count = (int *)calloc(max + 1,sizeof(int));

for (int i = 0; i < db->size; i++){
    count[db->cars[i].SKU]++;
}

printf("SKUs:");
for (int i = 0; i <= max; i++){
    while (count[i] > 0){
        printf("%d, ", i);
        count[i]--;
    }
}
printf("\n");
free(count);
    
}




/*printPriceSorted:
this functions takes in a database and prints he prices of all the cars in ascending order
*/
void printPriceSorted(Database *db){
// O(n)
//prices: $23185.00, $54899.00, \n
if (db == NULL || db->cars == NULL || db->size <= 0){
    return;
}

double max = db->cars[0].price;
for (int i = 0; i < db->size; i++ ){
    if (db->cars[i].price > max){
        max = db->cars[i].price;
    }
}
double *count = (double *)calloc(max + 1, sizeof(double));

for (int i = 0; i < db->size; i++){
    count[(int)(db->cars[i].price)]++; 

}

printf("Price:");
for (int i = 0; i <= max; i++){
    while (count[i] > 0){
        printf("$%.2f, ",(double)i);
        count[i]--;
    }
}
printf("\n");
free(count);
    
}
/*getPN_FromSKU: 
this function takes in a database and a sku number 
and returns the OEM_PN number associated with the car that matches the given SKU
*/
unsigned long long getPN_FromSKU(Database *db, int SKU){
// O(log(n)) binary search 
//not found = -1 
if (db == NULL || db->cars == NULL || db->size <= 0){
    return -1;
}
int bottom = 0; 
int top = db->size - 1; 

while (bottom <= top){
    int mid = bottom + (bottom - top) / 2;
    if (db->cars[mid].SKU == SKU){
        return db->cars[mid].OEM_PN;
    }else if(db->cars[mid].SKU < SKU){
        bottom = mid + 1; 
    }else {
        bottom = mid - 1;   
    }
}

return -1;
}

/*getSKU_FromPrice: 
this function takes in a database and a price and returns the associated SKU that matches the price given
*/
int getSKU_FromPrice(Database *db, double price){
// O(log(n))
//not found -1
if (db == NULL || db->cars == NULL || db->size <= 0){
    return -1; 
}
int bottom = 0;  
int top = db->size - 1; 

while (bottom <= top){
    int mid = bottom + (bottom - top) / 2;
    if (db->cars[mid].price == price){
        return db->cars[mid].SKU;
    }else if(db->cars[mid].price < price){
        bottom = mid + 1; 
    }else {
        top = mid - 1;   
    }
}

return -1; 

}

/*destroy: 
this function takes in a database and frees all memmory allocated to it
*/
void destroy(Database *db){
//o(1)
if (db != NULL) {
        free(db->cars);
        free(db);
}
}

