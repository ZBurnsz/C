#include "headers.h"

typedef struct {
    int empID, jobID; 
    char *name; 
    float salary;
}Employee;


Employee * reachEmployeeArray(FILE *ptr){

Employee *empArray; 

empArray = (Employee *)malloc(sizeof(Employee));

if(empArray == NULL){
    printf("Memory allocation failed\n");
    exit(1);
}


int *length;

//open check for length 
ptr = fopen("employee.txt", "r");
if (fscanf(ptr, "%d", length) == 0 || *length <= 0) {
        fprintf(stderr, "Error: Invalid or missing length in the file.\n");
        return NULL;
    }

//open allocate memory for the float array
float *floatArray = (float *)malloc(*length * sizeof(float));
    if (floatArray == NULL) {
        fprintf(stderr, "Error: Memory allocation failed.\n");
        return NULL;
    }

// NEED TO CHANGE TO READ FROM A STRUCTURE
    for (int i = 0; i < *length; ++i) {
        if (fscanf(ptr, "%f", &floatArray[i]) != 1) {
            fprintf(stderr, "Error: Failed to read float values from the file.\n");
            free(floatArray);
            return NULL;
        }
    }
    return floatArray;
    return length;
}

Employee * getEmployeeByID(Employee *, int empID){

    if (empID == empArray->empID)

    for (int i = 0; i < *length; ++i) {
        if (empArray[i].empID == empID){
            return &empArray[i];
        }
    }
    else{
        printf("Employee not found\n");
        return NULL;
    }

}




int setEmpSalary(Employee *, int empID, float salary){






}
int getEmpSalary(Employee *, int empID, float *salary){




}
int setEmpJobType(Employee *, int empID, int job){




}
int getEmpJobType(Employee *, int empID, int *job){





}

