#include <stdio.h>

double DrivingCost(double milesPerGallon, double dollarsPerGallon, double milesDriven)
{
    return milesDriven / milesPerGallon * dollarsPerGallon;
}

int main(void)
{

    double milesPerGallon, dollarsPerGallon;

    scanf("%lf %lf", &milesPerGallon, &dollarsPerGallon);

    double cost10 = DrivingCost(milesPerGallon, dollarsPerGallon, 10.0);
    double cost50 = DrivingCost(milesPerGallon, dollarsPerGallon, 50.0);
    double cost400 = DrivingCost(milesPerGallon, dollarsPerGallon, 400.0);

    printf("%0.2lf ", cost10);
    printf("%0.2lf ", cost50);
    printf("%0.2lf\n", cost400);

    return 0;
}
