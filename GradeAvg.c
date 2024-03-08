#include <stdio.h>
int main(void)
{
    int counter, grade, total, average;

    total = 0;
    counter = 1; // Starts loop counter

    while (counter <= 10)
    {
        printf("Enter Grade: ");
        scanf("%d", &grade);
        total = total + grade;
        counter = counter + 1;
    }
    average = total / 10;
    printf("Class Average is %d\n", average);


int* j;
int* z;
printf("enter ass size");
scanf("%d", &z);

printf("enter random number size");
scanf("%d", &j);

 int result = gyatt(&z, &j);

 printf("%d, %d", result );


    return 0;
}


int gyatt (int* x, int* y){
    printf("Enter ass size");
    scanf ("%d", &y);

    for(int i = 0; i < 5; ++i){
        scanf("%d", &x[i]);
        if (x > y){
            printf("GTYATTTT");
        }

    }

}
