#include <stdlib.h>

#define BOARD_SIZE 100 // Example size, adjust as needed

typedef struct {
    int shots;
    int hits;
    float score;
    int arena[BOARD_SIZE];
} GameBoard;

GameBoard *newBoard() {
    GameBoard *board = (GameBoard *)malloc(sizeof(GameBoard));
    if (board != NULL) {
        board->shots = 0;
        board->hits = 0;
        board->score = 0.0;
        for (int i = 0; i < BOARD_SIZE; i++) {
            board->arena[i] = 0; // Initialize all cells as empty
        }
    }
    return board;
}

int takeShot(GameBoard *board, int cell) {
    if (cell < 0 || cell >= BOARD_SIZE)
        return 0; // Out of bounds shot

    if (board->arena[cell] == 1) {
        board->arena[cell] = -1; // Hit
        board->hits++;
        board->shots++;
        board->score = (float)board->hits / board->shots;
        return 1; // Hit
    } else if (board->arena[cell] == 0) {
        board->shots++;
        board->score = (float)board->hits / board->shots;
    }
    return 0; // Miss
}

int countRemainingShips(GameBoard *board) {
    int count = 0;
    for (int i = 0; i < BOARD_SIZE; i++) {
        if (board->arena[i] == 1)
            count++;
    }
    return count;
}

int getShotsTaken(GameBoard *board) {
    return board->shots;
}

int getHits(GameBoard *board) {
    return board->hits;
}

float getScore(GameBoard *board) {
    return board->score;
}

int placeShip(GameBoard *board, int cell) {
    if (cell < 0 || cell >= BOARD_SIZE)
        return 0; // Out of bounds placement

    if (board->arena[cell] == 0) {
        board->arena[cell] = 1;
        return 1; // Ship placed
    }
    return 0; // Cell already occupied
}

void endGame(GameBoard *board) {
    free(board);
}
