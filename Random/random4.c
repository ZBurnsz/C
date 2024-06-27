#include <stdio.h>
<<<<<<< HEAD
#include <stdlib.h>
#include <assert.h>
#include <string.h>

#define size 50

typedef struct deckOfCards {
    char face[size];
    char suit[size];
    int number; 
} Card;

Card *createCard(const char *face, const char *suit, int number) {
    Card *newCard = (Card *)malloc(sizeof(Card));
    if (newCard == NULL) {
        printf("Memory allocation failed\n");
        return NULL; 
    }
    
    // Use strncpy to copy strings, ensuring no overflow
    strncpy(newCard->face, face, size - 1);
    newCard->face[size - 1] = '\0'; // Ensure null termination
    
    strncpy(newCard->suit, suit, size - 1);
    newCard->suit[size - 1] = '\0'; // Ensure null termination
    
    newCard->number = number;

    return newCard;
}

void getCard(Card *cardp, char *cardFace, char *cardSuit, int *cardNumber) {
    strcpy(cardFace, cardp->face); // Copy card face
    strcpy(cardSuit, cardp->suit); // Copy card suit
    *cardNumber = cardp->number;   // Assign card number
}

void freeCard(Card *cardp) {
    free(cardp); 
}

int main() {
    // Test createCard function
    Card *card1 = createCard("Ace", "Spades", 1);
    assert(strcmp(card1->face, "Ace") == 0);
    assert(strcmp(card1->suit, "Spades") == 0);
    assert(card1->number == 1);

    Card *card2 = createCard("King", "Hearts", 13);
    assert(strcmp(card2->face, "King") == 0);
    assert(strcmp(card2->suit, "Hearts") == 0);
    assert(card2->number == 13);

    // Test getCard function
    char card1Face[size], card1Suit[size];
    int card1Number;
    getCard(card1, card1Face, card1Suit, &card1Number);
    assert(strcmp(card1Face, "Ace") == 0);
    assert(strcmp(card1Suit, "Spades") == 0);
    assert(card1Number == 1);

    char card2Face[size], card2Suit[size];
    int card2Number;
    getCard(card2, card2Face, card2Suit, &card2Number);
    assert(strcmp(card2Face, "King") == 0);
    assert(strcmp(card2Suit, "Hearts") == 0);
    assert(card2Number == 13);

    // Test freeCard function
    freeCard(card1);
    freeCard(card2);

    printf("All tests passed!\n");

    return 0;
}
=======



int getValue (int array, int n, int max, int min){

    max = array[0];
    min = array[0];

    for (int i = 0; i < n; i++){
        if (array[i] > max) max = array[i];
        if (array[i] < min) min = array[i];
    }
    return min, max; 
}

int main (void){

int max, min = 0; 

int *array[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
int n = 10;

getValu(array, n, max, min); 


printf("max: %d\nMin:%d", max, min);

return 0; 
}
>>>>>>> d736aae (asd)
