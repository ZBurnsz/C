#include "lab4.h"
//used sources from my lab3 ship game and CS2050 slides on structures. 


/*GameBoard: 
This function creates a new board using an array */
GameBoard * newBoard(){

//memory 
GameBoard *board = (GameBoard *)malloc (sizeof(GameBoard));

//initialize board to 0 
for (int i = 0; i < BOARD_SIZE; ++i){
    board->arena[i] = 0;
}
return board; 


}

/*takeShot:
this function takes the gameboard as a paramater and a cell then compares that cell to 
1 or 0 depending on if a ship is hit or not and returns that value 1 or 0 if hit or miss 
*/
int takeShot(GameBoard *board, int cell){

if (board ->arena[cell] == 1 ){

    board->arena[cell] == -1;
    board->hits++;
    board->shots++;
    board -> score = (float)board->shots / board->hits; //change 
    return 1; 

} else if(board -> arena[cell] == -1 || 0){

    board -> shots++;
    board -> score = (float) board ->shots / board->hits; //change 
    return 0; 

}



}

/*countRemainingShips:
this function takes the game board and counts the number of remaining 1's 
then returns that number giving you the number of ships left 
*/
int countRemainingShips(GameBoard *board){
int count = 0;

for (int i = 0; i < BOARD_SIZE; ++i){
    if (board->arena[i] == 1){
        count++;
    }
}
return count; 

}


/*getShotsTaken:
this function takes the number of total shots taken from the board 
*/
int getShotsTaken(GameBoard *board){

return board->shots;


}
/*getHits: 
this functions takes the board as a parameter and returns the number of successful hits 
*/
int getHits(GameBoard *board){

return board->hits;


}

/*getScore: 
this function takes the board parameter and returns the score of the game 
(does not calculate the score)*/
float getScore(GameBoard *board){

return board -> score; 

}

/*placeShip:
this function takes the board and a cell input then places a ship in that cell unless already occupied
*/
int placeShip(GameBoard *board, int cell){
// check if 1 or -1 if those then == 1 if not the change 0 -> 1

if (cell < 0 || cell > BOARD_SIZE){
    return 3; 
}

if (board -> arena[cell] == 1 || -1){
    return 2; 
}


if (board -> arena[cell] == 0){
    board -> arena[cell] = 1;
    return 1;
}

return 0; 

}
/*endGame:
this function takes the board parameter and frees the memory that was allocated during the game. 
*/
void endGame(GameBoard *board){

free (board);
board = NULL; 



}

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
