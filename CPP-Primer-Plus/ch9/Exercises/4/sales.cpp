#include <iostream>
#include "sales.h"

namespace SALES {
    using std::cin;
    using std::cout;
    using std::endl;

    void setSales(Sales & s, const double ar[], int n) {
        if (n > 4)
            n = 4;
        for (int i = 0; i < 4; i++) {
            s.sales[i] = 0;
        }
        for (int i = 0; i < n; i++) {
            s.sales[i] = ar[i];
        }
        s.average = 0;
        for (int i = 0; i < n; i++) {
            s.average += s.sales[i] / n;
        }
        s.min = s.sales[0];
        for (int i = 1; i < n; i++) {
            if (s.sales[i] < s.min)
                s.min = s.sales[i];
        }
        s.max = s.sales[0];
        for (int i = 1; i < n; i++) {
            if (s.sales[i] > s.max)
                s.max = s.sales[i];
        }
    }

    void setSales(Sales & s) {
        s.average = 0;
        for (int i = 0; i < 4; i++) {
            cout << "Enter Sales of Quarter " << i << ": ";
            cin >> s.sales[i]; 
            s.average += s.sales[i];
        }
        s.average /= 4.;
        s.min = s.sales[0];
        for (int i = 1; i < 4; i++) {
            if (s.sales[i] < s.min)
                s.min = s.sales[i];
        }
        s.max = s.sales[0];
        for (int i = 1; i < 4; i++) {
            if (s.sales[i] > s.max)
                s.max = s.sales[i];
        }
    }

    void showSales(const Sales & s) {
        for (int i = 0; i < 4; i++) {
            cout << "Sales of Quarter " << i << ": " << s.sales[i] << endl;
        }
        cout << "Average: " << s.average << endl;
        cout << "Maximum: " << s.max << endl;
        cout << "Minimum: " << s.min << endl;
    }
}