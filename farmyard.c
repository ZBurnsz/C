#include <stdio.h>

int main (){

int num_of_cows = 0;
int num_of_chickens = 0;
int num_of_animals = 0;
int num_of_legs = 0;


printf("enter # of animals");
scanf("%d", &num_of_animals);

while(num_of_animals < 0){
    printf("Enter valid # of animals");
    scanf("%d", &num_of_animals);

}
printf("enter # of legs");
scanf("%d", &num_of_legs);

int flag = 1;

while(flag == 1){
if (num_of_legs > (2*num_of_animals)){
    if(num_of_legs <= (4*num_of_animals)){
        if (num_of_legs%2 == 0)
        ;
        }
        else {
            printf("above upper");
        }
    }
    else {
        printf("Below boundry  ");
    }
}
num_of_cows = (num_of_legs - (num_of_animals * 2)) / 2;
printf("Number of cows %d\n", num_of_cows);
printf("Number of chickens %d\n", num_of_chickens);

return 0;
}
