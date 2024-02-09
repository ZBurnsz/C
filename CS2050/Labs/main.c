#include "lab3.h"
int main() {
    // Create a new game board
    int *board = newBoard();

    // Take some shots
    takeShot(board, 3); // Hit
    takeShot(board, 5); // Miss
    takeShot(board, 7); // Hit

    // Print game statistics
    printf("Shots taken: %d\n", getShotsTaken(board));
    printf("Successful hits: %d\n", getHits(board));
    printf("Remaining ships: %d\n", countRemainingShips(board));
    printf("Score: %.2f\n", getScore(board));

    // End the game and free memory
    endGame(board);

    return 0;
}
