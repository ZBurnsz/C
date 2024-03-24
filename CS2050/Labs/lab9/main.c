#include "lab9.h"



int main (void){

StringBuilder *sb = newBuilder();

appendChar(sb, 'h');
appendChar(sb, 'e');
appendChar(sb, 'l');
appendChar(sb, 'l');
appendChar(sb, 'o');
appendChar(sb, 'z');
appendChar(sb, 'a');



printf("Size = %d\n", getSize(sb)); 
printf("Last Character = %c\n", lastChar(sb));
printf("string = %s \n", toStr(sb)); 


int index = lastIndex(sb, 'z'); 
printf("index char z = %d\n", index);

destroy (sb); 

return 0; 
}
