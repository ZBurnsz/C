#include <stdio.h>
#include <time.h>




int main (void){

double mag_size[14];
double time;

printf ("Enter mag size: ");
scanf("%lf",&mag_size);

for (int i = 0; i < mag_size[0]; i++){
    mag_size[i] = mag_size[i - 1];
    time = clock();
    while (clock() < time + 1000){
        time = 3500;
        continue;

    }



}
return 0;
}
