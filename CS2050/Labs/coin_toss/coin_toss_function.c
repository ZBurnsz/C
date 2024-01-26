#include "headers.h"



int coinTossGame(char player1[3], char player2[3], int *winner, int *numTosses) {
    // Check if player sequences are valid
    for (int i = 0; i < 3; ++i) {
        if (player1[i] != 'H' && player1[i] != 'T') {
            return 1;  // Error code 1: Invalid character in player 1's sequence
        }

        if (player2[i] != 'H' && player2[i] != 'T') {
            return 2;  // Error code 2: Invalid character in player 2's sequence
        }
    }

    *winner = 0;
    *numTosses = 0;

    // Simulate coin tosses and find the winner
    while (*numTosses < 6) {
        int toss = rand() % 2;  

        if (player1[*numTosses % 3] == (toss ? 'H' : 'T')) {
            *winner = 1;
            break;
        }

        if (player2[*numTosses % 3] == (toss ? 'H' : 'T')) {
            *winner = 2;
            break;
        }

        (*numTosses)++;
    }

    return 0;
}
