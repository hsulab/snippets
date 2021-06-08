#include <iostream> 
using namespace std; 
extern int x; 

namespace {
    // unnamed space, internal linkage
    int y = -4;
}

void another() { 
    cout << "another(): " << x << ", " << y << endl; 
}