#include <stdio.h>
#include <string.h>

int main(void)
{

    char Rock[10] = "Rock";
    char Paper[10] = "Paper";
    char Scissors[10] = "Scissors";
    char Operator[10];

    printf("Enter Rock, Paper, or Scissors: ");
    scanf("%s", Operator);

    if (strcmp(Rock, Operator) == 0)
    {
        printf("Paper");
    }
    else if (strcmp(Paper, Operator) == 0)
    {
        printf("Scissors");
    }
    else
    {
        printf("Rock");
    }
}
