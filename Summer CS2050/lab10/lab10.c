#include "lab10.h"

int * createArray(int size) 
{
	int *array = malloc(sizeof(int) * (size + sizeof(int)));
	if(array) 
    {
		*array = size;
		++array;
	}
	return array;
}

int getSize(int *array) 
{
	return array[-1];
}

int binarySearch(int *array, int value) 
{
	int min = 0, max = getSize(array) - 1;

	while(min <= max) 
    {

        int median = max + min / 2;

		if(array[median] == value) 
        {
			return median;
		} 
        else if(array[median] < value) 
        {
			min = median + 1;
		} 
        else 
        {
            max = median - 1;
		}
	}
	return -1;
}

void freeArray(int *array) 
{
	free(array - 1);
}
