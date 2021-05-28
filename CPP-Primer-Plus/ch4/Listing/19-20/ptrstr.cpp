// ptrstr.cpp -- using pointers to strings
#include <iostream>
#include <cstring> // declare strlen(), strcpy()
int main() {
    using namespace std;
    char animal[20] = "bear";
    const char * bird = "wren";
    char * ps;

    cout << animal << " and ";
    cout << bird << "\n";

    cout << "Enter a kind of animal: ";
    cin >> animal; // okay if input < 20 chars
    // cin >> ps; Too horrible a blunder to try

    ps = animal;
    cout << ps << "!\n";
    cout << "Before using strcpy():\n"; 
    cout << animal << " at " << (int *) animal << endl; 
    cout << ps << " at " << (int *) ps << endl;

    cout << strlen(animal) << endl;

    ps = new char[strlen(animal) + 1]; // get new storage 
    strcpy(ps, animal); // copy string to new storage

    cout << "After using strcpy():\n"; 
    cout << animal << " at " << (int *) animal << endl; 
    cout << ps << " at " << (int *) ps << endl; 

    cout << strlen(ps) << endl;

    delete [] ps; 
    
    return 0;

}