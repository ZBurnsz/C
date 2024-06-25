#include <stdio.h>
#include <stdlib.h>

typedef struct{
    int empID, salary; 
    char name[256];
} Employee;


void getEmpInfo (Employee * emp);



void createEmp (Employee * new){

    printf("Enter the employee ID: ");
    scanf("%d", &new->empID);
    printf("Enter the employee name: ");
    scanf("%s", new->name);
    printf("Enter the employee salary: ");
    scanf("%d", &new->salary);
}


int main(void) {
    int n = 5; // Number of employees
    Employee* employees = (Employee*)malloc(n * sizeof(Employee));

    for (int i = 0; i < n; i++) {
        createEmp(&employees[i]);
    }

    // Print employee information
    for (int i = 0; i < n; i++) {
        printf("\nEmployee %d Information:\n", i + 1);
        getEmpInfo(&employees[i]);
    }

    // Free the allocated memory
    free(employees);

    return 0;
}

void getEmpInfo (Employee * emp){

    printf("Employee ID: %d\n", emp->empID);
    printf("Employee Name: %s\n", emp->name);
    printf("Employee Salary: %d\n", emp->salary);


}