#include <stdio.h> 
#include <stdlib.h>
#include <string.h>


typedef struct {
    int empID, jobID; 
    char *name; 
    float salary;
}Employee;

Employee *readEmployeeArray(FILE *fp);
Employee *getEmployeeByID(Employee *employees, int empID);
int setEmpSalary(Employee *employees, int empID, float salary);
int getEmpSalary(Employee *employees, int empID, float *salary);
int setEmpJobType(Employee *employees, int empID, int job);
int getEmpJobType(Employee *employees, int empID, int *job);

