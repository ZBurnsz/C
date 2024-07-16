/*
CMP_SC 2050
Summer 2024
lab 9
by Zachary Burns 
July 11, 2024 
*/

#include "lab9.h"
#include <stdio.h>
#include <stdlib.h>

void printComputerArray(Computer *array, int size) {
    for (int i = 0; i < size; i++) {
        printf("Computer %d: Disk Size = %d, Company = %s, Model = %s\n", 
               i, array[i].iDisk, array[i].sCompany, array[i].sModel);
    }
}

int main() {
    int arraySize = 5;
    Computer *computers = (Computer *)makeArray(arraySize, sizeof(Computer));

    if (computers == NULL) {
        fprintf(stderr, "Failed to allocate memory for computers array.\n");
        return 1;
    }

    
    for (int i = 0; i < arraySize; i++) {
        computers[i].iDisk = 100 + i * 50; 
        snprintf(computers[i].sCompany, sizeof(computers[i].sCompany), "Company%d", i);
        snprintf(computers[i].sModel, sizeof(computers[i].sModel), "Model%d", i);
    }

    printComputerArray(computers, arraySize);

    Computer query;
    query.iDisk = 200; 
    snprintf(query.sCompany, sizeof(query.sCompany), "Company2");
    snprintf(query.sModel, sizeof(query.sModel), "Model2");

    int index = searchComputersByDiskSize(computers, &query);

    if (index != -1) {
        printf("Query Computer found at index %d.\n", index);
    } else {
        printf("Query Computer not found.\n");
    }

    freeArray(computers);

    return 0;
}
