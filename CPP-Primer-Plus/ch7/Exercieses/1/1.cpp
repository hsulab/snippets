/*
Write a program that repeatedly asks the user to enter pairs of numbers until at least one of the pair is 0. 
For each pair, the program should use a function to calculate the harmonic mean of the numbers. 
The function should return the answer to main(), which should report the result. 
The harmonic mean of the numbers is the inverse of the average of the inverses and can be calculated as follows:
harmonic mean = 2.0 × x × y / (x + y)
*/

#include <iostream>

double harmean(double x, double y);

int main() {
    using namespace std;

    double x, y, m;

    cout << "Enter two nonzero numbers: " << endl;
    while (cin >> x >> y) {
        if (x != 0 && y != 0) {
            m = harmean(x, y);
            cout << "Harmonic Mean of " 
                 << x << " and " << y << " is " << m << endl;
            cout << endl << "Enter two nonzero numbers: " << endl;
        }
        else {
            cout << endl << "Quit." << endl;
            break;
        }
    }
}

double harmean(double x, double y) {
    return 2.0*x*y/(x+y);
}