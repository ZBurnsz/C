// Remove the problematic self-inclusion line
#include "headers.h"

//this one counts the number per simulation, actually works and looks pretty good

int main(void) {
    srand(time(NULL));

    int totalSimulations;
    printf("Enter the number of simulations: ");
    scanf("%d", &totalSimulations);

    for (int simulation = 1; simulation <= totalSimulations; ++simulation) {
        char player1[4];
        printf("\nSimulation %d:\n", simulation);
        printf("Enter sequence for player1 (Ex: HTH): ");
        scanf("%3s", player1);

        char player2[4];
        printf("Enter sequence for player2 (Ex: HTH): ");
        scanf("%3s", player2);

        int winner, numTosses;

        int result = coinTossGame(player1, player2, &winner, &numTosses);

        if (result == 0) {
            printf("Player 1 sequence: %s\n", player1);
            printf("Player 2 sequence: %s\n", player2);
            printf("Winner: Player %d\n", winner);
            printf("Number of tosses: %d\n", numTosses);
        } else {
            printf("Error: %d\n", result);
        }
    }

    return 0;
}