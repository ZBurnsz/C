#include <stdio.h>
#include <math.h>

double degreesToRadians(double degrees) {
    return degrees * M_PI / 180.0;
}
double radiansToDegrees(double radians) {
    return radians * 180 / M_PI;
}

int main(void) {
    int choice;
    printf("Enter the type of triangle you want to solve:\n");
    printf("1. SSS (Side-Side-Side)\n");
    printf("2. SSA (Side-Side-Angle)\n");
    printf("3. ASA (Angle-Side-Angle)\n");
    scanf("%d", &choice);

    double a, b, c; // Sides of the triangle
    double A, B, C; // Angles of the triangle

    switch (choice) {
        case 1:
            printf("Enter the lengths of the three sides (a, b, c): ");
            scanf("%lf %lf %lf", &a, &b, &c);

            if (a + b <= c || b + c <= a || c + a <= b) {
                printf("These side lengths do not form a valid triangle.\n");
                return 1;
            }

            A = degreesToRadians(acos((b * b + c * c - a * a) / (2.0 * b * c)));
            B = degreesToRadians(acos((c * c + a * a - b * b) / (2.0 * c * a)));
            C = degreesToRadians(acos((a * a + b * b - c * c) / (2.0 * a * b)));
            break;


        case 2:
            printf("Enter two side lengths (a, b) and the included angle (C in degrees): ");
            scanf("%lf %lf %lf", &a, &b, &C);

            A = degreesToRadians(asin((a * sin(C)) / b));
            B = M_PI - A - degreesToRadians(C);
            c = (a * sin(B)) / sin(A);
            break;

        case 3:
            printf("Enter two angles (A and B in degrees) and the included side length (c): ");
            scanf("%lf %lf %lf", &A, &B, &c);

            C = 180.0 - A - B;
            a = (c * sin(A)) / sin(C);
            b = (c * sin(B)) / sin(C);
            break;

        default:
            printf("Invalid choice.\n");
            return 1;
    }

    printf("Solved Triangle:\n");
    printf("Side a = %.2lf\n", a);
    printf("Side b = %.2lf\n", b);
    printf("Side c = %.2lf\n", c);
    printf("Angle A = %.6lf degrees\n", radiansToDegrees(A));
    printf("Angle B = %.6lf degrees\n", radiansToDegrees(B));
    printf("Angle C = %.6lf degrees\n", radiansToDegrees(C));


    return 0;
}
