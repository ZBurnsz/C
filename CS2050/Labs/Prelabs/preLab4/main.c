#include "headers.h"





int main() {
    FILE *fp = fopen("employees.txt", "w");
    if (fp == NULL) {
        fprintf(stderr, "Error: Unable to open file.\n");
        return 1;
    }

    // Read employee array from file
    Employee *employees = readEmployeeArray(fp);

    // Example usage: Retrieve employee by ID
    int empID_to_search = 123;
    Employee *emp = getEmployeeByID(employees, empID_to_search);
    if (emp != NULL) {
        printf("Employee found: ID %d, Salary %.2f, Job Type %d\n", emp->empID, emp->salary);
    } else {
        printf("Employee with ID %d not found.\n", empID_to_search);
    }

    
 


    // Free allocated memory
    free(employees);
    fclose(fp);

    return 0;
}