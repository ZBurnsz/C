#include <stdio.h>

int main(void)
{

    int dog_years;
    printf("enter number of years: \n");
    scanf("%d", &dog_years);

    switch (dog_years)
    {
    case 1:
        printf("Your dog is 7 years old\n");
        break;
    case 2:
        printf("your dog is 13 years old\n");
        break;
    default:
        printf("Your dog is old as shit\n");
        break;
    }
    return 0;
} // you could continue to add as many case(s) as you want for any int or char
