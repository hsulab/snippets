// twoarg.cpp -- a function with 2 arguments
#include <iostream>

using namespace std;

void n_chars(char, int);

int main() {
    int times;
    char ch;

    cout << "Enter a character: ";
    cin >> ch; // must be a character
    // cout << ch << endl;
    while (ch != 'q') {
        cout << "Enter an integer: ";
        cin >> times;
        // cout << times << endl;
        n_chars(ch, times);
        cout << "\nEnter another character or press the" 
                " q-key to quit: ";
        cin >> ch;
        break;
    }
    cout << "The value of times is " << times << ".\n";
    cout << "Bye\n";

    return 0;
}

void n_chars(char c, int n) {
    while (n-- > 0) {
        cout << c;
    }
}