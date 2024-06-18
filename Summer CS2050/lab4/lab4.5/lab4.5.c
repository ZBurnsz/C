#include "lab4.5.h"
#include <stdlib.h>
#include <stdio.h>

/* AllocateJagged2DArray:
 * Input: the size of each element, rows - the number of rows, an array containing the number of columns for each row
 * Output: a pointer to the allocated jagged 2D array
 */
void ** AllocateJagged2DArray(int elementSize, int rows, int lengths[]) {
    void **arrayJagged = (void **)malloc((rows + 1) * sizeof(void *));
    if (arrayJagged == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        return NULL;
    }
    
    arrayJagged[0] = (void *)(size_t)rows;
    for (int i = 1; i <= rows; i++) {
        int *rowArray = (int *)malloc(sizeof(int) + lengths[i-1] * elementSize);
        if (rowArray == NULL) {
            fprintf(stderr, "Memory allocation failed for row %d\n", i-1);
            for (int j = 1; j < i; j++) {
                free(arrayJagged[j]);
            }
            free(arrayJagged);
            return NULL;
        }
        rowArray[0] = lengths[i-1];
        arrayJagged[i] = (void *)(rowArray + 1);
    }
    
    return arrayJagged;
}

/* FreeJagged2DArray:
 * Input: a pointer to the jagged 2D array
 */
void FreeJagged2DArray(void ** arrayJagged) {
    if (arrayJagged == NULL) {
        fprintf(stderr, "Array is NULL (FreeJagged2DArray)\n");
        return;
    }
    int rows = (int)(size_t)arrayJagged[0];
    for (int i = 1; i <= rows; i++) {
        free((int *)arrayJagged[i] - 1);
    }
    free(arrayJagged);
}

/* GetRowCount:
 * Input: a pointer to the jagged 2D array
 */
int GetRowCount(void ** arrayJagged) {
    if (arrayJagged == NULL) {
        fprintf(stderr, "Array is NULL (GetRowCount)\n");
        return -1;
    }
    return (int)(size_t)arrayJagged[0];
}

/* GetColCount:
 * Input: a pointer to the jagged 2D array, row - the row number
 * Output: the number of columns in the specified row
 */
int GetColCount(void ** arrayJagged, int row) {
    if (arrayJagged == NULL) {
        fprintf(stderr, "Array is NULL (GetColCount)\n");
        return -1;
    }
    int rows = (int)(size_t)arrayJagged[0];
    if (row < 0 || row >= rows) {
        fprintf(stderr, "Invalid row index (GetColCount)\n");
        return -1;
    }
    return *((int *)arrayJagged[row + 1] - 1);
}
