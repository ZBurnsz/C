#include <stdio.h>


double CelsiusFahrenheit(double tempC) {
    double tempF = (tempC * 9/5) + 32;
    return tempF;
}

int main(void) {
   double tempF;
   double tempC;

   printf("Enter temperature in Celsius:\n");
   scanf("%lf", &tempC);

   tempF = CelsiusFahrenheit(tempC);

   printf("Fahrenheit: %lf\n", tempF);

   return 0;
}
