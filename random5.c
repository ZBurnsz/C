#include <stdio.h>

#define SIZE 3

char board[SIZE][SIZE];

void initializeBoard() {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            board[i][j] = ' ';
        }
    }
}

void printBoard() {
    printf("-------------\n");
    for (int i = 0; i < SIZE; i++) {
        printf("| %c | %c | %c |\n", board[i][0], board[i][1], board[i][2]);
        printf("-------------\n");
    }
}

int isBoardFull() {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            if (board[i][j] == ' ') {
                return 0;
            }
        }
    }
    return 1;
}

int isWinner(char player) {
    // Check rows
    for (int i = 0; i < SIZE; i++) {
        if (board[i][0] == player && board[i][1] == player && board[i][2] == player) {
            return 1;
        }
    }

    // Check columns
    for (int j = 0; j < SIZE; j++) {
        if (board[0][j] == player && board[1][j] == player && board[2][j] == player) {
            return 1;
        }
    }

    // Check diagonals
    if (board[0][0] == player && board[1][1] == player && board[2][2] == player) {
        return 1;
    }
    if (board[0][2] == player && board[1][1] == player && board[2][0] == player) {
        return 1;
    }

    return 0;
}

int isValidMove(int row, int col) {
    if (row < 0 || row >= SIZE || col < 0 || col >= SIZE) {
        return 0;
    }
    if (board[row][col] != ' ') {
        return 0;
    }
    return 1;
}

void makeMove(int row, int col, char player) {
    board[row][col] = player;
}

int main() {
    initializeBoard();
    char currentPlayer = 'X';

    while (1) {
        printBoard();

        int row, col;
        printf("Player %c's turn. Enter row and column (0-2): ", currentPlayer);
        scanf("%d %d", &row, &col);

        if (!isValidMove(row, col)) {
            printf("Invalid move. Try again.\n");
            continue;
        }

        makeMove(row, col, currentPlayer);

        if (isWinner(currentPlayer)) {
            printf("Player %c wins!\n", currentPlayer);
            break;
        }

        if (isBoardFull()) {
            printf("It's a tie!\n");
            break;
        }

        currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
    }

    return 0;
}
