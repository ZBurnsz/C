#include <stdio.h>
#include <string.h>

#include "Student.h"

int main() {
    Student student = InitStudent();
    char name[20];

    GetName(name, student);
    printf("%s/%.1lf\n", name, GetGPA(student));

    student = SetName("Felix", student);
    student = SetGPA(3.7, student);
    GetName(name, student);
    printf("%s/%.1lf\n", name, GetGPA(student));

	return 0;
}
