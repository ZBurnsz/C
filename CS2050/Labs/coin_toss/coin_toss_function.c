#include "headers.h"


int coinTossGame(char player1[3], char player2[3], int *winner, int *numTosses) {
    // Generate a sequence of 6 random H's and T's
    int sequence[6];
    for (int i = 0; i < 6; ++i) {
        sequence[i] = rand() % 2;  // 0 or 1
    }

    // Print the sequence
    printf("Sequence: ");
    for (int i = 0; i < 6; ++i) {
        printf("%c ", (sequence[i] == 1) ? 'H' : 'T');
    }
    printf("\n");

    // Check for player 1 win
    int player1Win = 1;
    for (int i = 0; i < 3; ++i) {
        if (sequence[i] != player1[i]) {
            player1Win = 0;
            break;
        }
    }

    // Check for player 2 win
    int player2Win = 1;
    for (int i = 0; i < 3; ++i) {
        if (sequence[i] != player2[i]) {
            player2Win = 0;
            break;
        }
    }

    // Determine the winner and update winner and numTosses
    if (player1Win) {
        *winner = 1;
    } else if (player2Win) {
        *winner = 2;
    } else {
        *winner = 0;
    }

    *numTosses = 6;

    // Return 1 if there is a winner, 0 otherwise
    return *winner != 0;
}