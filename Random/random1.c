#include <stdio.h>




int main() {

int x = 10; 
int y = 20; 
int *p = &x; 
int *p1 = &y; 

*p = *p**p1; 

printf("%d\n", x);








return 0; 

}





    