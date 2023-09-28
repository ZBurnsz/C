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
    return 0;
}
