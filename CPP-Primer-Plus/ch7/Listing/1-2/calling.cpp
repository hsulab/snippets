// calling.cpp -- defining, prototyping, and calling a function
// Listing 7.1 page 306
#include <iostream>

void simple(); // function prototype

int main() {
    using namespace std;
    cout << "main() will call the simple() function:\n";
    simple();
    cout << "main() is finished with the simple() function.\n";
    return 0;
}

// function definition
void simple() {
    using namespace std;
    cout << "I'm but a simple function.\n";
}