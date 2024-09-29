#include <stdio.h>
#include <stdbool.h>
#include <ctype.h>

bool is_word_char(char c) {
    return isalnum(c);
}


/*if your inside a character then you continue through until you 
find space or punctuation then word count++ then you repeat. 

*/
int count_words(FILE *file) {
    int word_count = 0;
    bool in_word = false;
    char c;

    while ((c = fgetc(file)) != EOF) {

        if (is_word_char(c)) {
            if (!in_word) {
                in_word = true;
                word_count++;
            }
        } else {
            // We're outside of a word (encountered space, punctuation, etc.)
            in_word = false;
        }
    }

    return word_count;
}

int main() {
    char filename[100];

    printf("Enter the filename: ");
    scanf("%s", filename);

    FILE *file = fopen(filename, "r");

    if (file == NULL) {
        printf("Error: Could not open file %s\n", filename);
        return 1;
    }

    int word_count = count_words(file);

    printf("Word count: %d\n", word_count);

    fclose(file);

    return 0;
}
