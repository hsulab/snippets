// modified_arrfun3.cpp -- array functions and const
/*
Redo Listing 7.7, modifying the three array-handling functions to each use two pointer parameters to represent a range.
The fill_array() function, instead of returning the actual number of items read, 
should return a pointer to the location after the last location filled; 
the other functions can use this pointer as the second argument to identify the end of the data.
*/
#include <iostream>
const int Max = 5;

// function prototypes
double* fill_array(double* ar, int limit);
void show_array(double* ar, const double* end);
void revalue(double r, double* ar, const double* end);

int main() {
    using namespace std;
    double properties[Max];

    double* end = fill_array(properties, Max);
    show_array(properties, end);

    if (&properties[0] != end) {
        cout << "Enter revaluation factor: ";
        double factor;
        while (!(cin >> factor)) {
            cin.clear();
            while (cin.get() != '\n')
                continue;
            cout << "Bad input; Please enter a number: ";
        }
        revalue(factor, properties, end);
        show_array(properties, end);
    }
}

double* fill_array(double* ar, int limit) {
    using namespace std;
    double temp;
    double* end = ar;
    for (int i = 0; i < limit; i++) {
        cout << "Enter value #" << (i + 1) << ": "; 
        cin >> temp; 
        if (!cin) // bad input 
        {
            cin.clear(); 
            while (cin.get() != '\n') 
                continue; 
            cout << "Bad input; input process terminated.\n";
            break;
        }
        else if (temp < 0)
            break;
        ar[i] = temp;
        end++;
    }
    return end;
}

// the following function can use, but not alter, 
// the array whose address is ar 
void show_array(double* ar, const double* end) { 
    using namespace std;
    double* p = ar;
    while (p != end) {
        cout << "Property #" << ": $"; 
        cout << *p << endl;
        p++;
    }
}

// multiplies each element of ar[] by r 
void revalue(double r, double* ar, const double* end) {
    double* p = ar;
    while (p != end) {
        *p *= r;
        p++;
    }
}