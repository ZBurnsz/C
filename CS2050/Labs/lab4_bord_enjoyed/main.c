#include "lab4.h"

int main() {
    // Create a new game board
    GameBoard *board = newBoard();

    // Place some ships
    placeShip(board, 5);
    placeShip(board, 10);
    placeShip(board, 20);

    // Take some shots
    takeShot(board, 5); // Hit
    takeShot(board, 6); // Miss
    takeShot(board, 10); // Hit
    takeShot(board, 20); // Hit

    // Display game status
    printf("Remaining ships: %d\n", countRemainingShips(board));
    printf("Shots taken: %d\n", getShotsTaken(board));
    printf("Hits: %d\n", getHits(board));
    printf("Score: %.2f\n", getScore(board));

    // End the game and free memory
    endGame(board);

    return 0;
}