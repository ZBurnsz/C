/*
CMP_SC 2050
Summer 2024
lab 3
by Zachary Burns 
June 13, 2024 
*/

#include <stdlib.h>
#include <stdio.h>

/* strAlloc: allocates memory for a string of the size parameter 
 * Input: size - the number of bytes to allocate
 * Output: a pointer to the allocated memory
 */
char * strAlloc(int size) {
    // Allocate memory for the size of the array + size of an integer to store the size
    int *ptr = (int *)malloc(sizeof(int) + size * sizeof(char));
    if (ptr == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        return NULL;
    }
    *ptr = size; // Store the size of the array before the start of the array
    return (char *)(ptr + 1); // Return a pointer to the array
}

/* strLen: returns the length of a string
 * Input: str - a pointer to a string
 * Output: the length of the string
 */
int strLen(char *str) {
    if (str == NULL) {
        fprintf(stderr, "String is NULL (strLen)\n");
        return -1;
    }

    int *ptr = (int *)str;
    return *(ptr - 1);
}

/* strCpy: copies the contents of source to dest
 * Input: dest = a pointer to the destination string and source = a pointer to the source string
 */
void strCpy(char *dest, char *source) {
    int destLen = strLen(dest);
    int sourceLen = strLen(source);

    if (source == NULL || dest == NULL || destLen < sourceLen) {
        fprintf(stderr, "Error in strCpy\n");
        return;
    }

    for (int i = 0; i < sourceLen; i++) {
        dest[i] = source[i];    
    }
}

/* strRev: reverses the contents of source and stores it in dest
 * Input: dest = a pointer to the destination string and source = a pointer to the source string
 * Output: 1 if the operation was successful and they are the same length, 0 otherwise, -1 in case of error
 */
int strRev(char *dest, char *source) {
    int sourceLen = strLen(source);
    int destLen = strLen(dest);   

    if (source == NULL || dest == NULL || destLen < sourceLen) {
        fprintf(stderr, "Error in strRev\n");
        return -1;
    }

    for (int i = 0; i < sourceLen; i++) {
        dest[i] = source[sourceLen - i - 1];
    }

    return (destLen == sourceLen) ? 1 : 0;
}

/* strFree: frees the memory allocated for a string
 * Input: str - a pointer to the string to free
 */
void strFree(char *str) {
    if (str == NULL) {
        fprintf(stderr, "Error in strFree\n");
        return;
    }
    free((int *)str - 1); // Free the memory allocated to the array
}

int main() {
    // Test cases
    char *str1 = strAlloc(5);
    if (str1 == NULL) {
        printf("Memory allocation failed\n");
        return 1;
    }

    str1[0] = 'H';
    str1[1] = 'E';
    str1[2] = 'L';
    str1[3] = 'L';
    str1[4] = 'O';

    printf("str1 length: %d\n", strLen(str1));

    char *str2 = strAlloc(8);
    if (str2 == NULL) {
        printf("Memory allocation failed\n");
        return 1;
    }

    strCpy(str2, str1);
    printf("str2 after strCpy: ");
    for (int i = 0; i < strLen(str2); i++) {
        printf("%c", str2[i]);
    }
    printf("\n");

    char *str3 = strAlloc(8);
    if (str3 == NULL) {
        printf("Memory allocation failed\n");
        return 1;
    }

    int result = strRev(str3, str1);
    printf("str3 after strRev: ");
    for (int i = 0; i < strLen(str3); i++) {
        printf("%c", str3[i]);
    }
    printf("\n");
    printf("strRev result: %d\n", result);

    strFree(str1);
    strFree(str2);
    strFree(str3);

    return 0;
}
