#ifndef STUDENT_H_
#define STUDENT_H_

typedef struct {
    char name[20];
    double gpa;
}Student;


Student InitStudent();
Student SetName(char *name, Student s);
Student SetGPA (double gpa, Student s);
void GetName(char *studentName, Student s);
double GetGPA(Student s);
#endif
