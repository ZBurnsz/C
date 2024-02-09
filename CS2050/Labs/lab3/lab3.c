#include "lab3.h"


/*newBoard: 
this funciton simply creates the game board using an array with BOARD_SIZE defined in lab3.h */
int * newBoard(){
//store information hidden from the user, like shots taken (int)
// number of successeful hits (int) 
// and the score (float) = hits / shots 
// empty cell = 0, ship = 1, destroyed ship = -1

int *board = malloc((BOARD_SIZE) * sizeof(int));
//initialize to 0; 

for (int i = 0; i < BOARD_SIZE; i++){
    board[i] = 0; 
}

board [BOARD_SIZE + 1] = 0;     //get shots taken  
board [BOARD_SIZE + 2] = 0; //get hits 
board [BOARD_SIZE + 3] = 0; //get score 
board [BOARD_SIZE + 4] = 0.0; //update score 

return board; 



}
/*takeShot:
this function takes the gameboard and a cell as its parameters, the cell 
is the cell to be "shot at" on the game board 
*/
int takeShot(int *board, int cell){
//if given cell == 1 (occupied), then cell changes to -1 
// if given cell == 0 && -1 then nothing changes 
//also want to update the hidden game values on each shot 1 on hit and 0 on miss 

if (board[cell] == 1){
    board[cell] = -1;
    board[BOARD_SIZE + 1]++; //increment the value for the hidden shots taken. 
    updateScore(board);

    return 1;
}
else {
    //still update shots taken 
    board[BOARD_SIZE + 1]++;
    updateScore(board);

    return -1; // missed shot
}
    


}
/*countRaminingShips: 
this function simply takes the board parameter and will check how many ships remain 
checking how many 1's are on the board; 
*/
int countRemainingShips(int *board){
// loop through and get how many 1's are left on the board
int remainingShips = 0; 

for (int i = 0; i < BOARD_SIZE; i++){
    if (board[i] == 1){
        remainingShips++; 
    }
}

return remainingShips; 

}
/*getShotsTaken:
This function takes the board parameter and will return the number of shots taken 
*/
int getShotsTaken(int *board){
//hidden number

return board[BOARD_SIZE + 1]; // shots taken hidden value

}
/*getHits: 
This function takes the board parameter and returns the number of successeful hits 
*/
int getHits(int *board){

for (int i = 0; i < BOARD_SIZE; i++){
    if(board[i] == -1){
        board[BOARD_SIZE + 2]++;
    }
}
return board[BOARD_SIZE + 2];


}
/*getScore: 
this function takes the board parameter and returns the score shots taken / hits 
*/
float getScore(int *board){
// also hidden does not calculate the score 
return board[BOARD_SIZE + 3]; //where score is stored 

}
/* updateScore:
this function takes the board parameter and returns the updated score based on shots and hits 
*/
void updateScore(int *board){

int shots = getShotsTaken(board);
int hits = getHits (board);
 
int score = shots / hits; 
board [BOARD_SIZE + 4] = score; 


}
/*endGame
this function takes the board parameter and frees it when the game ends 
*/
void endGame(int *board){

free (board); 
board = NULL; 

    
}
