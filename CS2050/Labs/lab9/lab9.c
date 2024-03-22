#include "lab9.h"
#include <string.h>

typedef struct  { 
    char *s; 
    int size; 
    int max; 
}StringBuilder_t; 



// O(1)
/*StringBuilder: 
this function creates and returns a pointer to a new stringbuilder
*/
StringBuilder * newBuilder(void){
// O(1)

StringBuilder *sb = (StringBuilder *)malloc(sizeof(StringBuilder*)); 

if (sb == NULL){ 
    return NULL; 
}

sb->s = (char*)malloc(sizeof(char)); 
if(sb->s == NULL){
    free(sb);
    return NULL; 
}

sb->s[0] = '\0'; 
sb->size = 0;
sb->max = 1; 

return sb; 

}


/*getSize: 
this function takes a strinBuilder and returns the 
number of characters in the string
*/
int getSize(StringBuilder *b){
// O(1)
if (b==NULL){
    return 0; 
}
return b->size; 


}




/*appendChar: 
this function takes a character and appends it to the end of the stringBulder. 
1 = success 
0 = failure
*/
int appendChar(StringBuilder *b, char c){
// O(1)
if (b == NULL){
    return 0; 
}


if (b->size + 1 >= b->max){
b->max *= 2; 
if (b->s == NULL){
    return 0; 
}
}

b->s[b->size++] = c; 
b->s[b->size] = '\0';
return 1; 
}

/*lastChar: 
this function takes a stringBuilder and returns the last character. 
if empty returns NULL. 
*/
char lastChar(StringBuilder *b){
// O(n)
if (b == NULL || b->size == 0){
    return '\0';
}
return b->s[b->size - 1]; 

}

/*appendStr: 
this functions takes a stringBuilder and a string as inputs
and appends the string to the end of the stringBuilder 

*/
int appendStr(StringBuilder *b, char *s){
//dont append NULL terminator 
// O(n)
if (b == NULL || s == NULL){
    return 0; 
}

int length = strlen(s);

int new = b->size + length; 
if (new >= b->max){
    while (new >= b->max){
        b->max *= 2; 
        b->s = (char *)realloc(b->s, b->max * sizeof(char)); 
    }
}

strcat(b->s, s); 
b->size = new; 
return 1; 

}



/*toStr:
This functions takes a stringBuilder and returns a dynamically
allocated C string with the character sequence from the stringBuilder 
dont assume the user will appened their own NULL terminator
*/
char * toStr(StringBuilder *b){
// O(n)
if (b == NULL){
    return 0; 
}


char *str = (char *)malloc((b->size + 1) * sizeof(char)); 
strcpy(str, b->s); 
return str; 

}



/*lastIndex 
this function takes a stringBuilder and returns the last iteration of a character in the string;  
*/
int lastIndex(StringBuilder *b, char c){
// O(n)
if (b == NULL){
    return -1; 
}


for (int i = b->size - 1; i>= 0; i--){
    if (b->s[i] == c){ 
        //return + 1 because count of size starts at 1 not 0; 
        return i + 1; 
    }
}

return 0; 

}

/*destroy:
this function takes a stringBuilder and frees the memory. 

*/
void destroy(StringBuilder *b){

if (b!=NULL){
    free(b->s);
    free(b);
}


}



