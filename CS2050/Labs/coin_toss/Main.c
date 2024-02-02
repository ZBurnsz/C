#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int coinTossGame(char player1[3], char player2[3], int *winner, int *numTosses, char tosses[6]);

int main(void) {
    srand((unsigned int)time(NULL));  

    int aliceWins = 0, bobWins = 0;
    int numSimulations = 1000000; //input # of times you want to run the simulation. 

    for (int i = 0; i < numSimulations; ++i) {
        char aliceSequence[3] = {'H', 'H', 'T'};
        char bobSequence[3] = {'T','H','H'};

        int winner, numTosses;
        char tosses[6];
        int result = coinTossGame(aliceSequence, bobSequence, &winner, &numTosses, tosses);

        if (result == 0) {
            if (winner == 1) {
                aliceWins++;
            } else if (winner == 2) {
                bobWins++;
            }
        } else {
            printf("Error in simulation %d: %d\n", i + 1, result);
        }

        // Print the result after each iteration
        if (numTosses > 0) {
            printf("Coin Toss Sequence: ");
            for (int j = 0; j < numTosses; ++j) {
                printf("%c", tosses[j]);
            }
            printf("\n");
            printf("Winner: %s\n", (winner == 1) ? "Player 1" : ((winner == 2) ? "Player 2" : "No winner"));
            printf("Total winning percentage of Alice: %.2f%%\n", (double)aliceWins / (i + 1) * 100);
            printf("Total winning percentage of Bob: %.2f%%\n", (double)bobWins / (i + 1) * 100);
        }

        //press enter to run the next simulation 
        printf("Press Enter to run the next iteration ->");
        getchar();
    }

    return 0;
}

int coinTossGame(char player1[3], char player2[3], int *winner, int *numTosses, char tosses[6]) {

    // Check if player sequences are valid
    for (int i = 0; i < 3; ++i) {
        if (player1[i] != 'H' && player1[i] != 'T') {
            return 1;  
        }

        if (player2[i] != 'H' && player2[i] != 'T') {
            return 2;  
    }

    int tossIndex = 0;

    //generation of the H / T sequence
    while (tossIndex < 6) {
        char toss = (rand() % 2) ? 'H' : 'T';
        tosses[tossIndex] = toss;
        tossIndex++;
    }
 
    // Check for winning sequences
    for (int i = 0; i < 4; ++i) {
        if (tosses[i] == player1[0] && tosses[i + 1] == player1[1] && tosses[i + 2] == player1[2]) {
            *winner = 1;  
            break;
        } else if (tosses[i] == player2[0] && tosses[i + 1] == player2[1] && tosses[i + 2] == player2[2]) {
            *winner = 2;  
            break;
        }
    }

    *numTosses = (*winner > 0) ? 6 : 0;  
    return 0;
    }
}
