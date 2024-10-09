#ifndef _sort_h
#define _sort_h
#include "cs3050.h"
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>


void bubblesort(void *array, size_t nitems, size_t size, int (*CompareFunc)(const void *, const void*));

void insertionsort(void *array, size_t nitems, size_t size, int (*CompareFunc)(const void *, const void*));

void Swap(void * pItem1, void * pItem2, size_t itemsize);
void Copy(void * pDestItem, void * pSourceItem, size_t itemsize);
void RunTests(	void (*sortfunc)(	void *array, size_t count_elements, size_t size_element,int (*CompareFunc)(const void *, const void*)),bool fVerbose);


#endif
