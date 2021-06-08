#include <iostream>
#include <cstring>
#include "golf.h"

// non-interactive version:
// function sets golf structure to provided name, handicap 
// using values passed as arguments to the function 
void setgolf(golf & g, const char * name, int hc) {
    strcpy(g.fullname, name);
    g.handicap = hc;
}

// interactive version:
// function solicits name and handicap from user 
// and sets the members of g to the values entered 
// returns 1 if name is entered, 0 if name is empty string 
int setgolf(golf & g) {
    using std::cin;
    using std::cout;
    using std::endl;

    std::cout << "Enter fullname: " << std::endl;
    cin.getline(g.fullname, Len);
    if (strlen(g.fullname) == 0) {
        g.handicap = 0;
        return 0;
    }
    else {
        std::cout << "Enter handicap: " << std::endl;
        cin >> g.handicap;
        return 1;
    }
}

// function resets handicap to new value 
void handicap(golf & g, int hc) {
    g.handicap = hc;
}

// function displays contents of golf structure 
void showgolf(const golf & g) {
    using std::cout;
    using std::endl;
    std::cout << "fullname: " << g.fullname << std::endl;
    std::cout << "handicap: " << g.handicap << std::endl;
}