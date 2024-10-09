/*
CMP_SC 3050
lab 1
by Zachary Burns
Sept 18, 2024
*/

#include <cs3050.h>
#include <stdio.h>



void bubblesort(void *array, size_t nitems, size_t size, int (*CompareFunc)(const void *, const void*))
{
	for (int i=0;i<nitems;i++)
	{
		for (int j=0;j<nitems-1;j++)
		{
			void * item1 = array + j * size;
			void * item2 = array + (j+1)*size;
			if (CompareFunc(item1,item2)>0)
			{
				Swap(item1,item2,size);
			}
		}
	}
}



//complete code here 
//use functions swap() to swap 2 items given in 
//use copy() to copy an item into another item but not swa	p it 
//! Insertion sort, sorts in real time when inserting an item into an array



/*insertionHelper: 
does the copying, checking, and coparing within the array */
void insertionHelper(void *array, size_t size, size_t index, int (*CompareFunc)(const void *, const void*))
{
    void *insert = malloc(size);

	//error checking
    if (insert == NULL) {

        fprintf(stderr, "Failed to allocate memory\n");
        return;
    }
	if (array == NULL ){
		fprintf(stderr, "Array is NULL\n");
		return;
	}
	if (CompareFunc == NULL){
		fprintf(stderr,"invalid CompareFunc");
		return;
	}
	
	//function 
    Copy(insert, (char *)array + index * size, size);

    size_t j = index;

    while (j > 0 && CompareFunc((char *)array + (j - 1) * size, insert) > 0)
    {
        Copy((char *)array + j * size, (char *)array + (j - 1) * size, size);
        j--;
    }
    Copy((char *)array + j * size, insert, size);
    
    free(insert);
}

/*insertionsort: 
this function takes an array*, size of items, size of the array and a comparefunc imput 
and sorts the array with the help of insertionHelper function.  
*/
void insertionsort(void *array, size_t nitems, size_t size, int (*CompareFunc)(const void *, const void*))
{
	//error checking
	if (array == NULL ){
		fprintf(stderr, "Array is NULL\n");
		return;
	}
	if (CompareFunc == NULL){
		fprintf(stderr,"invalid CompareFunc");
		return;
	}


	//function 
    for (size_t i = 1; i < nitems; i++)
    {
        insertionHelper(array, size, i, CompareFunc);
    }
}
