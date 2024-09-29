#include <stdio.h> 




char print(int *size){ 

char *name = "something";


for(int i = 0; i < *size; i++){
    printf("%s, %s, %s, %s, \n", name, name, name, name);
}


}



int main (void){ 


int size = 0;

printf("Enter size: "); 
scanf("%d",&size);


return print(&size);

}