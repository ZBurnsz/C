#include "MUCSGraph.h"
#include "Queue.h"
#include "BFS.h"
#include <stdio.h>
#include <stdlib.h>

//this is Cody's dont turn in

void PrintBFS(Vertex *V, int countV, Edge *E, int countE, int s) {
    Queue *q = newQueue(countV);

    // Initialize all vertices
    for (int i = 0; i < countV; i++) {
        V[i].color = WHITE;
        V[i].d = -1;
        V[i].predecessor = -1;
    }

    // Start with the given vertex s
    V[s - 1].color = GRAY;
    V[s - 1].d = 0;
    enQueue(q, s);

    while (!isEmpty(q)) {
        int u = deQueue(q);

        printf("%d(%d) ", u, V[u - 1].d);
        V[u - 1].color = BLACK;

        // Process all neighbors of u
        for (int j = 0; j < countE; j++) {
            int neighborIndex = -1;

            if (E[j].from == u) {
                neighborIndex = E[j].to - 1;
            } else if (E[j].to == u) {
                neighborIndex = E[j].from - 1;
            }

            if (neighborIndex != -1 && V[neighborIndex].color == WHITE) {
                V[neighborIndex].color = GRAY;
                V[neighborIndex].d = V[u - 1].d + 1;
                V[neighborIndex].predecessor = u;
                enQueue(q, neighborIndex + 1);
            }
        }
    }

    printf("\n");
}