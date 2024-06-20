#ifndef _LAB5_H
#define _LAB5_H

// Types
struct _Node 
{
	void *data;
	struct _Node *next;
};
typedef struct _Node Node;

// Prototypes
int makeList(Node **list);
int getSize(Node *list);
int insertAtHead(Node **list, void *data);
void * removeFromTail(Node **list);
void freeList(Node **list);

#endif