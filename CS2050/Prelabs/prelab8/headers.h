#include <stdio.h>
#include <stdlib.h>



typedef struct listStruct {
 int object;
 struct listStruct *next;
} List;


List * initList(int*);
List * insertAtHead(int, List*, int*);
int getAtIndex(int, List*);
int getListLength(List*);
List * freeList(List*);



//new functions from prelab 8. 

List * insertAtPosition(int pos, int key, List*, int*);
/* This function returns the int object at the specified
position. How do you handle the case of an invalid
position? */
int getAtPosition(int pos, List*, int*);
/* This function removes the int object at the specified
position. */
List * removeAtPosition(int pos, List*, int*);
/* This function removes all instances of the specified
int object. */
List * removeObject(int obj, List*, int*);
