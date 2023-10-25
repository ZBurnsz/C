#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Mapping of digits to letters
char *digitMap[] = {
    "",     // 0
    "",     // 1
    "abc",  // 2
    "def",  // 3
    "ghi",  // 4
    "jkl",  // 5
    "mno",  // 6
    "pqrs", // 7
    "tuv",  // 8
    "wxyz"  // 9
};

void generateCombinations(char *digits, int index, char *current, char **result, int *count) {
    if (index == strlen(digits)) {
        current[index] = '\0';
        result[(*count)] = (char *)malloc(strlen(current) + 1);
        strcpy(result[(*count)], current);
        (*count)++;
        return;
    }

    int digit = digits[index] - '0';
    int lettersCount = strlen(digitMap[digit]);

    for (int i = 0; i < lettersCount; i++) {
        current[index] = digitMap[digit][i];
        generateCombinations(digits, index + 1, current, result, count);
    }
}

char **letterCombinations(char *digits, int *returnSize) {
    int length = strlen(digits);
    char **result = (char **)malloc(1000 * sizeof(char *)); // Max 1000 possible combinations
    *returnSize = 0;

    if (length == 0) {
        return result;
    }

    char current[length + 1];
    generateCombinations(digits, 0, current, result, returnSize);

    return result;
}

int main() {
    int digits;
    printf("digits = ");
    scanf("%d", &digits);
    int returnSize;
    char **combinations = letterCombinations(digits, &returnSize);

    for (int i = 0; i < returnSize; i++) {
        printf("%s\n", combinations[i]);
        free(combinations[i]);
    }

    free(combinations);

    return 0;
}
