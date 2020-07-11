#include <stdio.h>
#include <math.h>

# C version of CANBAC2.pas
int main() {
    // Calculate sqrt(15,2)
    int a = 150000;
    double s = 2;
    double x[100];
    int i = 0;
    double e = 1e-9;
    x[0] = 1;
    x[1] = (1 + a) / s;

    while (fabs(x[i+1] - x[i]) > e) {
        i++;
        x[i+1] = (x[i] + (a / x[i])) / s;
        printf("Guess: %.20lf", x[i], x[i+1]);
    }

    printf("Result: %.20lf\n", x[i+1]);

    return 0;
}
