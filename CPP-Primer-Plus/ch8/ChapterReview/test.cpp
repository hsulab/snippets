#include <iostream>

using namespace std;

// void song(int times = 1, const char * name = "O, My PaPa");
void song(const char * name = "O, My PaPa", int times = 1);

int main () {

    song();

    return 0;
}

// void song(int times, const char * name) {
void song(const char * name, int times) {
    cout << times << endl;
    cout << name << endl;
}