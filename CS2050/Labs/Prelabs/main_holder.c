// Remove the problematic self-inclusion line
#include "headers.h"


/* This function simulates the coin-toss game for two players.
 The first two arguments are character strings of length 3,
 where each character is H or T. If one of the strings does not
 satisfy the requirements, the function returns a nonzero number
 to signify an error, otherwise it returns 0 to signify there
 were no errors. A sequence of coin tosses is then simulated
 until the sequence of one of the players is encountered.
 The number of the winning player will be stored at the
 location specified by winner and the number of tosses
 performed will be stored in numTosses. */
int coinTossGame(char player1[3], char player2[3],
 int *winner, int *numTosses){


for (int i = 0; i < 3; i++){
    if (player1[i] != 'H' && player1[i] != 'T'){
        return 1; //error code for player 1 
    }
    if (player2[i] != 'H' && player2[i] != 'T'){
        return 1; //error code for player 2 

    }
}


int tosses;
*numTosses = 0;

while (1){
    tosses = rand() % 2; // random toss generator

    if (tosses == (player1[*numTosses % 3] == 'H')){
        *winner = 1;
        return 0;
    }

    if (tosses == (player2[*numTosses % 3] == 'H')){
        *winner = 2;
        return 0;
    }

    (*numTosses)++;
}

 }

int main (void){

srand(time(NULL));

char player1[4];
printf("Enter sequence for player1 (Ex: HTH)");
scanf("%3s", &player1);


char player2[4];
printf("Enter sequence for player1 (Ex: HTH)");
scanf("%3s", &player2);

int winner, numTosses;

int result = coinTossGame(player1, player2, &winner, &numTosses);

if (result == 0) {
        printf("Player %d wins after %d tosses.\n", winner, numTosses);
    } else {
        printf("Error: %d\n", result);
    }


    return 0; 
}