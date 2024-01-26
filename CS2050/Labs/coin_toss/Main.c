#include "headers.h"


int main() {
    // Seed for random number generation
    srand(time(NULL));

    // Player sequences
    char player1Sequence[3] = {'H', 'H', 'T'};  // HHT
    char player2Sequence[3] = {'T', 'H', 'H'};  // THH

    // Variables for tracking wins
    int player1Wins = 0;
    int player2Wins = 0;

    // User input for the number of runs
    int numRuns;
    printf("Enter the number of runs: ");
    scanf("%d", &numRuns);

    // Loop for the specified number of runs
    for (int run = 1; run <= numRuns; ++run) {
        // Variables to store winner and number of tosses
        int winner;
        int numTosses;

        // Run the coin toss game
        int result = coinTossGame(player1Sequence, player2Sequence, &winner, &numTosses);

        // Print the winner and update win counts
        if (result) {
            if (winner == 1) {
                printf("Player 1 wins!\n");
                player1Wins++;
            } else if (winner == 2) {
                printf("Player 2 wins!\n");
                player2Wins++;
            }
        } else {
            printf("No winner. Running again.\n");
            run--; // Run again without incrementing run
        }
    }

    // Calculate and print winning percentages
    double player1WinPercentage = (double)player1Wins / numRuns * 100;
    double player2WinPercentage = (double)player2Wins / numRuns * 100;

    printf("\nPlayer 1 Win Percentage: %.2f%%\n", player1WinPercentage);
    printf("Player 2 Win Percentage: %.2f%%\n", player2WinPercentage);

    return 0;
}