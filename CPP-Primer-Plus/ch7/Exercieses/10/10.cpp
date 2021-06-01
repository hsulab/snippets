#include <iostream>

double add(double x, double y);
double sub(double x, double y);
double calculate(double x, double y, double f(double, double));

using namespace std;

int main() {
    double x, y;
    cout << "enter x and y: " << endl;
    cin >> x >> y;

    double (*apf[2])(double, double) = {add, sub};

    for (auto pf: apf) {
        double q = calculate(x, y, *pf);
        cout << q << endl;
    }

    return 0;
}

double calculate(double x, double y, double func(double, double)) {
    return func(x, y);
}

double add(double x, double y) { 
    return x + y; 
}

double sub(double x, double y) { 
    return x - y; 
}