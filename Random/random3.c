#include <stdio.h>




void square(int *k){
    *k = *k * *k;

}



int main (){

int x = 5; 

square(&x);

printf("%d\n", x);


return 0;
}

lafferee c2205