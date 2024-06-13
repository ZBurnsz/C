#include "lab3.h"
#include <stdio.h>
#include <stdlib.h>




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