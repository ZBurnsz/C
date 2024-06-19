#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

int max (int a, int b){
    return (a > b) ? a : b; 
}


bool areDistinct(char str[], int i, int j)
{

    bool visited[256];
    for (int i = 0; i < 256; i++)
        visited[i] = 0;

    for (int k = i; k <= j; k++) {
        if (visited[str[k]] == true)
            return false;
        visited[str[k]] = true;
    }
    return true;
}



int lengthOfLongestSubstring(char* s) {
    
int n = strlen(s);
int result = 0; 
for (int i = 0; i < n; i++){
    for (int j = i; j < n; j++){
        if (areDistinct-(s, i, j)){
            result = max(result, j - i + 1);
        }
    }
    return result; 
}


}





int main() {

    char s[] = "abcabcbb";

    int result = lengthOfLongestSubstring(s);


    return 0;
}
