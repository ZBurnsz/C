#include <stdio.h>
#include <stdbool.h>

int main(void) {
    const int BASE_TABLE_ELEMENTS = 4;
    const int MAX_ELEMENTS = 10;
    int annualSalary;
    double taxRate;
    int taxToPay;
    int numSalaries;
    bool keepLooking;
    int i;

    int salaryBase[] = { 20000, 50000, 100000, 999999999 };
    double taxBase[] = { .10, .20, .30, .40 };
    int annualSalaries[MAX_ELEMENTS]; // Array to hold annual salaries
    int taxesToPay[MAX_ELEMENTS]; // Array to hold corresponding tax amounts

    numSalaries = 0;
    int totalAnnualSalaries = 0;
    int totalTaxesToPay = 0;

    printf("\nEnter annual salary (0 to exit): \n");
    scanf("%d", &annualSalary);

    while (annualSalary > 0) {
        i = 0;
        taxRate = 0;
        keepLooking = true;

        // Search for the appropriate table row for the given annualSalary
        while ((i < BASE_TABLE_ELEMENTS) && keepLooking) {
            if (annualSalary <= salaryBase[i]) {
                taxRate = taxBase[i];
                keepLooking = false;
            }
            else {
                ++i;
            }
        }

        taxToPay = (int)(annualSalary * taxRate); // Truncate tax to an integer amount

        // Store the annual salary and tax to pay in the respective arrays
        annualSalaries[numSalaries] = annualSalary;
        taxesToPay[numSalaries] = taxToPay;
        numSalaries++;
        // this will iterate 10 times because [numSalaries] is = MAX_ELEMENTS which = 10.

        totalAnnualSalaries += annualSalary;
        totalTaxesToPay += taxToPay;
        // this adds to the total

        printf("Annual salary: %d", annualSalary);
        printf("\tTax rate: %lf", taxRate);
        printf("\tTax to pay: %d\n", taxToPay);

        // Get the next annual salary
        printf("\nEnter annual salary (0 to exit): \n");
        scanf("%d", &annualSalary);
    }

    // Print the total annual salaries and total taxes to pay
    printf("Total Annual Salaries: %d\n", totalAnnualSalaries);
    printf("Total Taxes to Pay: %d\n", totalTaxesToPay);

    return 0;
}
