/*
Begin with the following structure declaration:
struct chaff {
    char dross[20];
    int slag; 
};
Write a program that uses placement new to place an array of two such structures in a buffer.
Then assign values to the structure members (remembering to use strcpy() for the char array) and 
use a loop to display the contents. 
Option 1 is to use a static array, like that in Listing 9.10, for the buffer. 
Option 2 is to use regular new to allocate the buffer.
*/
#include <iostream>
#include <cstring>
#include <new>

struct chaff {
    char dross[20];
    int slag; 
};

const int BUF = 512; 
const int N = 2; 
char buffer[BUF]; // chunk of memory 

int main() { 
    using namespace std;
    chaff *pd1, *pd2; 

    pd1 = new chaff[N]; // use heap 
    pd2 = new (buffer) chaff[N]; // use buffer array

    for (int i = 0; i < N; i++) {
        (pd1+i)->slag = 100;
        strcpy((pd1+i)->dross, "wangw");
        (pd2+i)->slag = 200;
        strcpy((pd2+i)->dross, "miaow");
    }

    for (int i = 0; i < N; i++) {
        cout << (pd1+i)->slag << endl;
        cout << (pd1+i)->dross << endl;
        cout << (pd2+i)->slag << endl;
        cout << (pd2+i)->dross << endl;
    }

    delete [] pd1;
}