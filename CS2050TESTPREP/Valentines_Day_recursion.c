#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "Graphics.h"

//prototypes 
void yes(void);
void a(void);
void b(void);









void main(void) {
    char str[100];

    printf("\n \n \n                                                         Will you be my valentine?       \n");
    printf("Please enter yes or no\n");
    scanf("%s", str);

    if (strcmp(str, "yes") == 0) {
        yes();
    } else if (strcmp(str, "no") == 0) {
        a();
    } else {
        printf("Invalid input\n");
    }
}

void yes(void) {
    printf("I love you\n");
}

void a(void) {
    char str[100];

    printf("Try again\n");
    scanf("%s", str);

    if (strcmp(str, "yes") == 0) {
        printf("Yay\n");
    } else {
        b();
    }
}

void b(void) {
    char str[100];

    printf("Try again\n");
    scanf("%s", str);

    if (strcmp(str, "yes") == 0) {
        printf("Yay\n");
    } else {
        a();
    }
}


