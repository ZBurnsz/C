
int main(void)
{
    double initialSavings; // User-entered initial savings
    double interestRate;   // Interest rate
    double currSavings;    // Current savings with interest
    int i;                 // Loop variable

    printf("Enter initial savings: ");
    scanf("%lf", &initialSavings);

    printf("Enter interest rate: ");
    scanf("%lf", &interestRate);

    printf("\nAnnual savings for 10 years: \n");

    currSavings = initialSavings;
    for (i = 0; i < 10; ++i)
    {
        printf("$%lf\n", currSavings);
        currSavings = currSavings + (currSavings * interestRate);
    }

    return 0;
}
