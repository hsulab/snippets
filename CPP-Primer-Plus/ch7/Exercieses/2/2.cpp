/* 
Write a program that asks the user to enter up to 10 golf scores, which are to be stored in an array.
You should provide a means for the user to terminate input prior to entering 10 scores. 
The program should display all the scores on one line and report the average score. 
Handle input, display, and the average calculation with three separate array-processing functions.
*/
#include <iostream>

using namespace std;

const int MAXNUM = 10;

void input(int* scores, const int size);
void display(const int* scores, const int size);
double average(const int* scores, const int size);

int main() {

    int scores[10];
    input(scores, MAXNUM);
    display(scores, MAXNUM);
    double mean = average(scores, MAXNUM);
    cout << "average: " << mean << endl;

    return 0;
}

void input(int* scores, const int size) {
    int score;
    cout << "enter ten score: " << endl;
    for (int i=0; i < size; i++) {
        // TODO: check valid input
        cin >> score;
        scores[i] = score;
    }
}

void display(const int* scores, const int size) {
    for (int i=0; i < size; i++) {
        cout << scores[i] << " ";
    }
    cout << endl;
}

double average(const int* scores, const int size) {
    double total = 0;
    for (int i=0; i < size; i++) {
        total += scores[i];
    }
    total /= size;

    return total;
}