#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int empID, jobType;
    float salary;
} Employee;



Employee *readEmployeeArray(FILE *fp) {
    int numRecords;
    fread(&numRecords, sizeof(int), 1, fp);

    Employee *employees = (Employee *)malloc(numRecords * sizeof(Employee));
    if (employees == NULL) {
        fprintf(stderr, "Memory allocation failed.\n");
        exit(1);
    }

    fread(employees, sizeof(Employee), numRecords, fp);

    return employees;
}

Employee *getEmployeeByID(Employee *employees, int empID) {
    for (int i = 0; employees[i].empID != 0; ++i) {
        if (employees[i].empID == empID) {
            return &employees[i];
        }
    }
    return NULL;
}

int setEmpSalary(Employee *employees, int empID, float salary) {
    Employee *emp = getEmployeeByID(employees, empID);
    if (emp != NULL) {
        emp->salary = salary;
        return 0; // Success
    }
    return 1; // Error: Employee not found
}

int getEmpSalary(Employee *employees, int empID, float *salary) {
    Employee *emp = getEmployeeByID(employees, empID);
    if (emp != NULL) {
        *salary = emp->salary;
        return 0; // Success
    }
    return 1; // Error: Employee not found
}

int setEmpJobType(Employee *employees, int empID, int job) {
    Employee *emp = getEmployeeByID(employees, empID);
    if (emp != NULL) {
        emp->jobType = job;
        return 0; // Success
    }
    return 1; // Error: Employee not found
}

int getEmpJobType(Employee *employees, int empID, int *job) {
    Employee *emp = getEmployeeByID(employees, empID);
    if (emp != NULL) {
        *job = emp->jobType;
        return 0; // Success
    }
    return 1; // Error: Employee not found
}
