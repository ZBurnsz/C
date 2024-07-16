#include <stdio.h>
#include <stdlib.h>
#include "lab8.5.h"
#include "baseball.h"



double mypow(int base, int power) {
 
    switch (power) {

        case 0:
            return 1;

        case 1:
            return base;
            
        default:
            if (power > 0) {
                return base * mypow(base, power - 1);
            } else {
                return 1.0 / mypow(base, -power);
            }
    
    }
}




void PrintBaseBallPlayers(PBaseBallPlayer players, int length)
{
    if (players == NULL){
        fprintf(stderr, "Error: players = NULL (PrintBaseBallPlayers\n");
        return;
    }

    if (length <= 0){
        fprintf(stderr, "Error: length < 0 (PrintBaseBallPlayers)\n");
        return;
    }else {
        PrintBaseBallPlayer(players);
        PrintBaseBallPlayers(Next(players),length - 1);
    }


    // You should probably call PrintBaseBallPlayer() in here to print
    // a single player.
}

PBaseBallPlayer findHighestAvg(PBaseBallPlayer players, int length){
    //error checking
    if (players == NULL) {
        fprintf(stderr, "Error: players = NULL (findHighestAvg)\n");
        return NULL;
    }
    if (length <= 0){
        fprintf(stderr, "Error: length < 0 (findHighestAvg)\n");
        return NULL;
    }
    if (length == 1){
        return players;
    }

    PBaseBallPlayer nextHighest = findHighestAvg(Next(players), length - 1);

    PBaseBallPlayer HightestAvg = (AVG(players) > AVG(nextHighest)) ? players : nextHighest;

    return HightestAvg;
}

void SortBaseBallPlayers(PBaseBallPlayer players, int length)
{
    if (length <= 0){
        fprintf(stderr, "Length not valid (sortBaseballPlayers)\n");
        return;
    }
   
    PBaseBallPlayer highestAvgPlayer = findHighestAvg(players, length);
    SwapPlayer(players, highestAvgPlayer);
    SortBaseBallPlayers(Next(players), length - 1);

}
