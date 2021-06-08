#include <iostream>
#include "sales.h"

int main() {
    using SALES::Sales;
    using SALES::setSales;
    using SALES::showSales;

    Sales s;
    setSales(s);
    showSales(s);

    double ar[3] = {1,2,3};
    setSales(s, ar, 3);
    showSales(s);
}