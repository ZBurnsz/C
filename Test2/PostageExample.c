#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    const int NUM_ELEMENTS = 14;
    // Weights in ounces
    double letterWeights[14] = {1.0, 2.0, 3.0, 3.5, 4.0, 5.0, 6.0,
                                7.0, 8.0, 9.0, 10.0, 11.0, 12.0, 13.0};
    // Costs in cents (usps.com 2017)
    int postageCosts[14] = {49, 70, 91, 112, 161, 182, 203,
                            224, 245, 266, 287, 308, 329, 350};
    double userLetterWeight;
    bool foundWeight;
    int i;

    // Prompt user to enter letter weight
    printf("Enter letter weight (in ounces): ");
    scanf("%lf", &userLetterWeight);

    // Postage costs are based on the smallest letter weight greater than
    // or equal to mailing letter weight
    foundWeight = false;

    for (i = 0; (i < NUM_ELEMENTS) && (!foundWeight); ++i)
    {
        if (userLetterWeight <= letterWeights[i])
        {
            foundWeight = true;
            printf("Postage for USPS first class mail is %d cents\n", postageCosts[i]);

            if (i < NUM_ELEMENTS - 1) {
                double nextHigherWeight = letterWeights[i + 1];
                int nextHigherCost = postageCosts[i + 1];
                printf("The next higher weight is %.1lf with a cost of %d cents.\n", nextHigherWeight, nextHigherCost);
            }
        }
    }

    if (!foundWeight)
    {
        printf("Letter is too heavy for USPS first class mail.\n");
    }

    return 0;
}
