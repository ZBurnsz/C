#include "headers.h"



int main(void) {
    srand((unsigned int)time(NULL));  // Seed the random number generator

    char aliceSequence[3] = {'H', 'H', 'T'};
    char bobSequence[3] = {'T', 'H', 'H'};

    int aliceWins = 0, bobWins = 0;
    int numSimulations = 1000000;

    for (int i = 0; i < numSimulations; ++i) {
        int winner, numTosses;
        int result = coinTossGame(aliceSequence, bobSequence, &winner, &numTosses);

        if (result == 0) {
            if (winner == 1) {
                aliceWins++;
            } else {
                bobWins++;
            }
        } else {
            printf("Error in simulation %d: %d\n", i + 1, result);
        }
    }

    double aliceWinPercentage = (double)aliceWins / numSimulations * 100;
    double bobWinPercentage = (double)bobWins / numSimulations * 100;

    printf("Alice's win percentage: %.2f%%\n", aliceWinPercentage);
    printf("Bob's win percentage: %.2f%%\n", bobWinPercentage);

    return 0;
}
