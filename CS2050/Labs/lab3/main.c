#include "lab3.h"

int main() {
    // Declare an array to represent the game board
    int board[BOARD_SIZE];

    // Initialize the game board
    for (int i = 0; i < BOARD_SIZE; i++) {
        board[i] = 0; // 0 represents an empty cell
    }

    // Example: Place a ship at position 3
    board[3] = 1; // 1 represents a ship

    // Print the game board
    printf("Game Board:\n");
    for (int i = 0; i < BOARD_SIZE; i++) {
        printf("%d ", board[i]);
    }
    printf("\n");

    return 0;
}