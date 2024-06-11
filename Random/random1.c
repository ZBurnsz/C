#include <stdio.h>
int main(void) {  
 const int NUM_VALS = 4;   
int courseGrades[NUM_VALS];   
int i;   
for (i = 0; i < NUM_VALS; ++i) {  //iterate through an array 

scanf("%d", &(courseGrades[i]));   

}


printf("%d %d %d %d \n%d %d %d %d \n", courseGrades[0], courseGrades[1], courseGrades[2], courseGrades[3],courseGrades[3], courseGrades[2], courseGrades[1], courseGrades[0]);  

return 0;
}