/*
CMP_SC 2050
Summer 2024
lab 3
by Zachary Burns 
June 13, 2024 
*/

#include "lab3.h"
#include <stdlib.h>
#include <stdio.h>

/*strAlloc: allocates memory for a string of the size parameter 
 *Input: size - the number of bytes to allocate
 *Output: a pointer to the allocated memory
*/
char * strAlloc(int size){
    
        if (size <= 0){
            fprintf(stderr, "invalid size");
            return NULL;
        }

        char *p = (char*)malloc(size + sizeof(int) + 1);
        if(p == NULL){
            fprintf(stderr, "Memory allocation failed pointer \n");
            return NULL;
        }
        
        *(int*)p = size; 
        return p + sizeof(int);

}   

/*strLen: returns the length of a string
 *Input: str - a pointer to a string
 *Output: the length of the string
*/
int strLen(char *str){
if (str == NULL){
    fprintf(stderr, "String is NULL(strLen)\n");
    return -1;
}

return *((int *)str - 1);

}

/* strCpy: copies the contents of source to dest
 *Input: dest = a pointer to the destination string and source = a pointer to the source string
 
*/
void strCpy(char *dest, char *source) {
    int destLen = strLen(dest);
    int sourceLen = strLen(source);

    if (source == NULL || dest == NULL) {
        fprintf(stderr, "Source or Dest == NULL\n");
        return;
    }
    if (destLen < sourceLen){
        fprintf(stderr,"dest length is too short\n");
        return; 
    }

    for (int i = 0; i < sourceLen; i++) {
        dest[i] = source[i];    
    }
}

/* strRev: reverses the contents of source and stores it in dest
 *Input: dest = a pointer to the destination string and source = a pointer to the source string
 *Output: 0 if the operation was successful, -1 otherwise
 
*/
int strRev(char *dest, char *source) {
    int sourceLen = strLen(source);
    int destLen = strLen(dest);   

    if (source == NULL || dest == NULL) {
        fprintf(stderr, "Source or Dest == NULL (strRev)\n");
        return -1;
    }
    if (destLen < sourceLen){
        fprintf(stderr,"dest length is too short(strRev)\n");
        return -1; 
    }

    for (int i = 0; i < sourceLen; i++) {
        dest[i] = source[sourceLen - i - 1];
    }

    return (destLen == sourceLen) ? 1 : 0;
}

/*  strFree: frees the memory allocated for a string
 str = a pointer    to the string to free
*/
void strFree(char *str){

if (str == NULL){
    fprintf(stderr, "str == NULL (strfree)\n");
    return;
}else{
    free(str - sizeof(int));
}

}
