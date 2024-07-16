#ifndef _LAB9_H
#define _LAB9_H






EmpDatabase createSearchableEmployeeDB(Employee **, int);
Employee * findEmpBySSN(int, EmpDatabase);
Employee * findEmpByID(int, EmpDatabase);
void freeEmpDatabase(EmpDatabase);
int getErrorCode(EmpDatabase);


#endif
