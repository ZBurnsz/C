#include <stdio.h> 
#include <stdlib.h>
#include <string.h>

typedef struct {
    int empID, jobID; 
    char *name; 
    float salary;
}Employee;

Employee * reachEmployeeArray(FILE *ptr);

Employee * getEmployeeByID(Employee *, int empID);



int setEmpSalary(Employee *, int empID, float salary);
int getEmpSalary(Employee *, int empID, float *salary);
int setEmpJobType(Employee *, int empID, int job);
int getEmpJobType(Employee *, int empID, int *job);

