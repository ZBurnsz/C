#include <stdio.h>
#include <string.h>

int main(void) {

int n;

scanf("%d", &n);

char words[20][10];
int counts[20] = {0};

if (n > 20){
    printf("Too many words");
    return 1;
}

for (int i = 0; i < n; i++){
    char temp [10];
    scanf("%s", temp);
    strcpy( words[i], temp);
}
for (int i = 0; i < n; i++){
    if (counts[i] == -1) continue; //already counted

counts[i] = 1;
for (int j = 0; j < n ; j++ ){
    if (strcmp(words[i], words[j]) == 0){
       counts[j] = counts[i];
       counts[i]++;


    }
}
     printf("%s - %d\n", words[i], counts[i] - 1);

}


   return 0;
}
