#include <iostream>


struct applicant { 
    char name[30]; 
    int credit_ratings[3]; 
};

void show_applicant(const applicant& app);
void show_applicant(const applicant* app);

typedef void (*p1_fun)(const applicant*);

int main() {

    // void (*p1)(const applicant*) = &show_applicant;
    p1_fun p1 = &show_applicant;

    applicant a = {"abc", {1,2,3}};

    show_applicant(a);
    (*p1)(&a);

    return 0;
}

void show_applicant(const applicant& app) {
    using namespace std;
    cout << app.name << endl;
    for (int i=0; i<3; i++)
        cout << app.credit_ratings[i] << endl;
}

void show_applicant(const applicant* app) {
    using namespace std;
    cout << app->name << endl;
    for (int i=0; i<3; i++)
        cout << app->credit_ratings[i] << endl;
}