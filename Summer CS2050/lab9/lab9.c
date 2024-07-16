/*
CMP_SC 2050
Summer 2024
lab 9
by Zachary Burns 
July 11, 2024 
*/



#include "lab9.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>



/*makeArray: 
    this funciton takes in an array size and elements size and returns the array, 
    with the size before the array.

*/
void * makeArray(int arraySize, int elementSize) 
{

    void *array = malloc(arraySize * elementSize + sizeof(int));

    if (array == NULL){
        fprintf(stderr, "Array is NULL (makeArray)\n");
        return NULL;
    }


    *(int*)array = arraySize;
    return array + sizeof(int);

	return NULL;
}


/*getSize: 
    this function returns the size of the array; 

*/
int getSize(void *array) 
{

    if (array == NULL || array - 1 == NULL){
        fprintf(stderr, "Array is NULL (getSize)\n");
        return -1;
    }

    return *(int*)(array - sizeof(int));

	return 0;
}


/*compareComputersByDiskSize: 
    this function takes in 2 computers and compares them based on there iDisk members.  
    a < b = -1;
    a > b = 1;
*/
int compareComputersByDiskSize(Computer *a, Computer *b) 
{
//! 0(1)

    if (a == NULL || b == NULL ){
        fprintf(stderr, "Computer is NULL (compareComputersByDiskSize)\n");
        return -1;
    }
	
    if (a->iDisk < b->iDisk){
        return -1;
    }
    else if (a->iDisk > b->iDisk){
        return 1;
    }else {
        return 0;
    }

	
}

/* SearchComputersByDiskSizeHelper:
   Recursive helper function for binary search by disk size.
   Returns index of query in array (0-based) on success, or -1 on error.
*/
int SearchComputersByDiskSizeHelper(Computer *array, Computer *query, long bottom, long top) 
{
    if (array == NULL || query == NULL) {
        fprintf(stderr, "Array or query is NULL (SearchComputersByDiskSizeHelper)\n");
        return -1;
    }

    if (bottom > top) {
        return -1; 
    }
     
    long mid = (bottom + top) / 2; //finding middle
    
    long comparisonResult = compareComputersByDiskSize(&array[mid], query);

    if (comparisonResult == 0) {
        return mid; 
    } 
    else if (comparisonResult < 0) {
        return SearchComputersByDiskSizeHelper(array, query, mid + 1, top); //right 
    } 
    else {
        return SearchComputersByDiskSizeHelper(array, query, bottom, mid - 1); //left
    }
}

/* searchComputersByDiskSize:
   Performs binary search on array by disk size using recursion.
   Returns index of query in array (0-based) on success, or -1 on error.
*/
int searchComputersByDiskSize(Computer *array, Computer *query) 
{
    if (array == NULL || query == NULL) {
        fprintf(stderr, "Array or query is NULL (SearchComputersByDiskSizeHelper)\n");
        return -1;
    }
	long size = getSize(array);

    long bottom = 0; 
    long top = size - 1; 
    long index = SearchComputersByDiskSizeHelper(array, query, bottom, top);

    return index; 

}



/*compareComputersByCompanyAndModel: 
this function compares 2 computers basded on there company and model; 

*/
int compareComputersByCompanyAndModel(Computer *a, Computer *b) 
{
//O(1)
//! optional bonus points 

      if (a == NULL || b == NULL ){
        fprintf(stderr, "Computer is NULL (compareComputersByDiskSize)\n");
        return -1;
    }
    
    if (strcmp(a->sCompany, b->sCompany) == 0){
        if (strcmp(a->sModel, b->sModel) == 0)
        return 0;
        
    }else if (strcmp(a->sCompany, b->sCompany) > 0 || (strcmp(a->sCompany, b->sCompany) < 0 )){
        return 1; 
    }


	return 0;
}


int SearchComputersByCompanyAndModelHelper(Computer *array, Computer *query, int bottom, int top) 
{
    if (bottom > top) {
        return -1; 
    }
    
    int mid = (bottom + top) / 2; 
    
    int comparisonResult = compareComputersByCompanyAndModel(&array[mid], query);
    
    if (comparisonResult == 0) {
        return mid; 
    } else if (comparisonResult < 0) {
        return SearchComputersByCompanyAndModelHelper(array, query, mid + 1, top); 
    } else {
        return SearchComputersByCompanyAndModelHelper(array, query, bottom, mid - 1); 
    }
}

int searchComputersByCompanyAndModel(Computer *array, Computer *query) 
{
    if (array == NULL || query == NULL) {
        fprintf(stderr, "Error: NULL array or query (searchComputersByCompanyAndModel)\n");
        return -1;
    }
    
    int size = getSize(array);
    int bottom = 0;
    int top = size - 1;
    
    return SearchComputersByCompanyAndModelHelper(array, query, bottom, top);
}



/*freeArray: 
    this function frees the array. 
*/
void freeArray(void *array) 
{

    if (array == NULL || array - 1 == NULL){
        fprintf(stderr, "Array is NULL (freeArray)\n");
        return;
    }

    free(array - sizeof(int));

    return;

}