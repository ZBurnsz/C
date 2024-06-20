#include <stdio.h>

int main(void) {
    FILE *fPtr = fopen("test.c", "w");

    const char *textToWrite[] = {
       "#include <stdio.h>",

       "int main (void) \n{\nreturn}",
       


    };


    size_t numText = sizeof(textToWrite) / sizeof (textToWrite[0]);


    if ((fPtr) == NULL) {
        printf("Error! Opening file");
        return 1;
    }

    for (size_t i = 0; i < numText; ++i){
        if (fputs(textToWrite[i], fPtr) == EOF){
        perror("Error writing to the file\n");
        return 1;
        }
        fputc('\n', fPtr);
    }
   

    fclose(fPtr);

    
    return 0;
}
