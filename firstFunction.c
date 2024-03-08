#include <Stdio.h>

int square();

int main(void)
{

    int x;
    for (x = 1; x <= 10; x++)
    {
        printf("%d ", square(x));
    }

    printf("\n");
    return 0;
}
int square()
{
    int y;
    int number;
    scanf("%d ", &y);
    scanf("%d ", &number);
    return y * number;
}
