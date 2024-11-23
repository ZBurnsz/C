#include "MUCSGraph.h"
#include "Queue.h"
#include "BFS.h"
#include <stdio.h>
#include <stdlib.h>


void PrintBFS(Vertex *V, int countV, Edge *E, int countE, int s) {
    Queue *q = newQueue(countV);

    //initialize all vertices to white 
    for (int i = 0; i < countV; i++) {
        V[i].color = WHITE;
        V[i].d = -1;
        V[i].predecessor = -1;
    }

    //starting vertex 
    V[s - 1].color = GRAY;  
    V[s - 1].d = 0;
    enQueue(q, s);

    //not empty remove 
    while (q->size > 0) {
        int u = deQueue(q);

        printf("%d(%d) ", u, V[u - 1].d);
        //vertex = done
        V[u - 1].color = BLACK;
        
        for (int j = 0; j < countE; j++) {
            int neighborIndex = -1;


            //check for neighbors
            if (E[j].from == u) {
                neighborIndex = E[j].to - 1;
            } else if (E[j].to == u) {
                neighborIndex = E[j].from - 1;
            }
            //if neighbor has not been visited -> visit 
            if (neighborIndex != -1 && V[neighborIndex].color == WHITE) {
                V[neighborIndex].color = GRAY;
                V[neighborIndex].d = V[u - 1].d + 1;
                V[neighborIndex].predecessor = u;
                enQueue(q, neighborIndex + 1);
            }
        }
    }

    destroy(q);
    printf("\n");
}