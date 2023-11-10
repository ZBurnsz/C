#include <stdio.h>
#include <string.h>

#include "Student.h"

Student InitStudent(){
    Student s;
    strcpy(s.name, "Louie");
    s.gpa = 1.0;
    return s;
}
Student SetName(char *name, Student s){
    strncpy(s.name, name, sizeof(s.name));
    s.name[sizeof(s.name)] = '\0';
    return s;
}

Student SetGPA(double gpa, Student s){
    s.gpa = gpa;
    return s;
}

void GetName(char *studentName, Student s){
    strcpy(studentName, s.name);
}
double GetGPA(Student s){
    return s.gpa;
}
