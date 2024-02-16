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
}
return board; 


}

/*takeShot:
this function takes the gameboard as a paramater and a cell then compares that cell to 
1 or 0 depending on if a ship is hit or not and returns that value 1 or 0 if hit or miss 
*/
int takeShot(GameBoard *board, int cell){

if (board ->arena[cell] == 1 ){
    board->arena[cell] = -1;
    board->hits++;
    board->shots++;
    board -> score = (float)board->hits / board->shots; //change 
    return 1; 
}else if (board->arena[cell] == -1 || board->arena[cell] == 0) {
    board -> shots++;
    board -> score = (float) board ->hits / board->shots; //change 
    }
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
//check if outside of bounds 

if (cell < 0 || cell >= BOARD_SIZE){
    return 0; 
}
if (board -> arena[cell] == 1 || -1){
    return 0; 
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
    // Example usage
    GameBoard *board = newBoard();
    placeShip(board, 5);
    placeShip(board, 10);
    takeShot(board, 5);
    takeShot(board, 6);
    printf("Remaining ships: %d\n", countRemainingShips(board));
    printf("Shots taken: %d\n", getShotsTaken(board));
    printf("Hits: %d\n", getHits(board));
    printf("Score: %.2f\n", getScore(board));
    endGame(board);
    return 0;
}
