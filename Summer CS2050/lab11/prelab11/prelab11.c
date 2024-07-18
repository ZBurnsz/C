#include <stdio.h>







typedef struct employee{
    char name[100];
    int salary;
} Employee;

typedef struct empDatabase{
    Employee *employees;
    int numEmployees;
    int errorCode;
} *EmpDatabase;



EmpDatabase createSearchableEmployeeDB(){
    
    EmpDatabase db = malloc(sizeof(struct empDatabase));
    db->employees = malloc(sizeof(struct employee) * 100);
    db->numEmployees = 0;
    db->errorCode = 0;
    return db;


    
    }// Just inits your struct

EmpDatabase insertEmp(Employee *emp, EmpDatabase){
    
if (emp == NULL){
    EmpDatabase->errorCode = 1;
    return EmpDatabase;
}




}
int countEmpsInSalaryRange(int min, int max, EmpDatabase){





}
void freeEmpDatabase(EmpDatabase){





}
int getErrorCode(EmpDatabase){








}













int main (void){








    return 0; 
}