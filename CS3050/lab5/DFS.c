#include "MUCSGraph.h"
#include "DFS.h"
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include "Queue.h"


void DFSVisit(Vertex *V, int countV, Edge *E, int countE, int s, int *time) {

    Vertex *current = &V[s - 1]; 
    //in progress vertex
    current->color = GRAY;

    (*time)++;
    current->d = *time;
    

    //check and explore neighbors
    for (int i = 0; i < countE; i++) {
        Vertex *neighbor = NULL;


        //check for connected neighbors similar to BFS 
        if (E[i].from == s) {
            neighbor = &V[E[i].to - 1]; 
        } else if (E[i].to == s) {
            neighbor = &V[E[i].from - 1]; 
        }
        //neighbor has not been visited -> visit 
        if (neighbor != NULL && neighbor->color == WHITE) {
            neighbor->predecessor = s;
            DFSVisit(V, countV, E, countE, neighbor->number, time);
        }
    }

    //visited 
    current->color = BLACK;
    (*time)++;
    current->f = *time;

    printf("%d(%d) ", s, current->f);
}

void PrintDFS(Vertex *V, int countV, Edge *E, int countE) {
    //initialize all vertices to white 
    for (int i = 0; i < countV; i++) {
        V[i].color = WHITE;
        V[i].d = -1;
        V[i].f = -1;
        V[i].predecessor = -1;
    }

    int time = 0;

    //start DFS 
    for (int i = 0; i < countV; i++) {
        if (V[i].color == WHITE) {
            DFSVisit(V, countV, E, countE, V[i].number, &time);
        }
    }
    printf("\n");

}