#include <stdio.h>
#include "lab0.h"
/* countOccurrences:
   This function takes a query number, an array, and a size parameter and checks the 
   given array for the number of times the query number appears.
*/
int countOccurrences(int n, int arr[], int size) {
    // Checking for NULL array 
    if (arr == NULL) {
        fprintf(stderr, "Error: Null array\n");
        return -1;
    }

    // Checking for array size less than 0 
    if (size < 0) {
        fprintf(stderr, "Error: too small of an array\n");
        return -1;
    }

    // Main function logic 
    int count = 0; 

    for (int i = 0; i < size; i++) {
        if (arr[i] == n) {
            count++;
        }
    }

    return count; 
}
int main(void) {
    int arr[] = {8, 5, 3, 10, 8, 8, 10, 10, 10, 3};
    int size = sizeof(arr) / sizeof(arr[0]);

    int query1 = 5;
    int query2 = 3;

    int count1 = countOccurrences(query1, arr, size);
    if (count1 != -1) {
        printf("The number %d occurs in the array %d time%s.\n", query1, count1, (count1 == 1) ? "" : "s");
    }

    int count2 = countOccurrences(query2, arr, size);
    if (count2 != -1) {
        printf("The number %d occurs in the array %d time%s.\n", query2, count2, (count2 == 1) ? "" : "s");
    }

    // Test with NULL array to intentionally cause an error
    int *nullArray = NULL;
    int countNull = countOccurrences(5, nullArray, size);
    if (countNull != -1) {
        printf("The number 5 occurs in the null array %d time%s.\n", countNull, (countNull == 1) ? "" : "s");
    }

    return 0;
}
