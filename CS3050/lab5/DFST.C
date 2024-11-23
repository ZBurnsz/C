#include "MUCSGraph.h"
#include "DFS.h"
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include "Queue.h"

//this is Codys dont turn in!

int time;

void DFSVisit(Vertex *V, int countV, Edge *E, int countE, int s) {
    V[s - 1].color = GRAY;
    time++;
    V[s - 1].d = time;

    for (int i = 0; i < countE; i++) {
        if (E[i].from == s && V[E[i].to - 1].color == WHITE) {
            V[E[i].to - 1].predecessor = s;
            DFSVisit(V, countV, E, countE, E[i].to);
        } else if (E[i].to == s && V[E[i].from - 1].color == WHITE) {
            V[E[i].from - 1].predecessor = s;
            DFSVisit(V, countV, E, countE, E[i].from);
        }
    }

    V[s - 1].color = BLACK;
    time++;
    V[s - 1].f = time;
    printf("%d(%d) ", s, V[s - 1].f);
}

void PrintDFS(Vertex *V, int countV, Edge *E, int countE) {


    for (int i = 0; i < countV; i++) {
        V[i].color = WHITE;
        V[i].d = -1;
        V[i].f = -1;
        V[i].predecessor = -1;
    }

    time = 0;

    for (int i = 0; i < countV; i++) {
        if (V[i].color == WHITE) {
            DFSVisit(V, countV, E, countE, V[i].number);
        }
    }

    printf("\n");
}




















