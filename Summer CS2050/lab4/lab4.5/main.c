#include "lab4.5.h"
#include <stdio.h>


int main() {
    int rows = 4;
    int lengths[] = {2, 4, 3, 7};

    // Allocate the jagged 2D array
    void **jaggedArray = AllocateJagged2DArray(sizeof(int), rows, lengths);
    if (jaggedArray == NULL) {
        return 1;
    }

    // Initialize the jagged array
    int counter = 0;
    for (int i = 0; i < rows; i++) {
        int cols = GetColCount(jaggedArray, i);
        for (int j = 0; j < cols; j++) {
            ((int **)jaggedArray)[i+1][j] = counter++;
        }
    }

    // Print the jagged array
    printf("*** Here comes test #1 ***\n");
    for (int i = 0; i < rows; i++) {
        int cols = GetColCount(jaggedArray, i);
        for (int j = 0; j < cols; j++) {
            printf("array[%d][%d]=%d, ", i, j, ((int **)jaggedArray)[i+1][j]);
        }
        printf("\n");
    }

    // Free the jagged array
    FreeJagged2DArray(jaggedArray);

    // Test with a struct array
    typedef struct {
        char name[20];
        int age;
    } FamilyMember;

    FamilyMember members[8] = {
        {"Jim Ries", 57}, {"Laura Ries", 55}, {"Abbie Ries", 25}, {"Charlotte Ries", 19},
        {"Cisco Ries", 13}, {"Murphy Ries", 1}, {"Larry Ries", 55}, {"Allison Ries", 14}
    };

    int memberRows = 2;
    int memberLengths[] = {6, 2};
    void **memberArray = AllocateJagged2DArray(sizeof(FamilyMember), memberRows, memberLengths);
    if (memberArray == NULL) {
        return 1;
    }

    // Initialize the member array
    int memberIndex = 0;
    for (int i = 0; i < memberRows; i++) {
        int cols = GetColCount(memberArray, i);
        for (int j = 0; j < cols; j++) {
            ((FamilyMember **)memberArray)[i+1][j] = members[memberIndex++];
        }
    }

    // Print the member array
    printf("*** Here comes test #2 ***\n");
    for (int i = 0; i < memberRows; i++) {
        int cols = GetColCount(memberArray, i);
        for (int j = 0; j < cols; j++) {
            FamilyMember member = ((FamilyMember **)memberArray)[i+1][j];
            printf("%s - %d, ", member.name, member.age);
        }
        printf("\n");
    }

    // Free the member array
    FreeJagged2DArray(memberArray);

    return 0;
}
