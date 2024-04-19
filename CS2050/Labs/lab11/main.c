#include "lab11.h"



int main (void){

Car cars[] = {
{11090, 2230.00, 12345678},{10071, 2235.12, 22345678},{10072, 2239.00, 12345688}
};

int size = sizeof(cars) / sizeof(cars[0]);

Database *db = makeDatabase(cars, size);

printf("SKUs: \n");
printSKU_Sorted(db);

printf("Prices: \n");
printPriceSorted(db);

int SKU = 12345678; 
printf("OEM from SKU %d: %llu", SKU, getPN_FromSKU(db, SKU));

double price = 2235.12; 
printf("SKU from price $%.2f: %d", price, getSKU_FromPrice(db, price));

destroy(db);

return 0; 

}
