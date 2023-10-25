#include <stdio.h>
#include <stdlib.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
char ** letterCombinations(char *, int*); //scope / prototype
char *digitMap[]; //scope / prototype



int main (){

int digits;

printf("Enter a digit 2-9");
scanf ("%d", &digits);


if (&digits == 1 || &digits < 0)
{
    printf("Invalid Number");

}

return 0;


}



char ** letterCombinations(char * digits, int* returnSize){

int digits;

for (int i = 0; i < digits; i++){

}




}
char *digitMap[] = {
    "",     // 0
    "",     // 1
    "abc",  // 2
    "def",  // 3
    "ghi",  // 4
    "jkl",  // 5
    "mno",  // 6
    "pqrs", // 7
    "tuv",  // 8
    "wxyz"  // 9
};
