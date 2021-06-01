# Chapter Review

## 1. What are the three steps in using a function?
page 306. Provide a function definition, Provide a function prototype, Call the function.

## 2. Construct function prototypes that match the following descriptions:

a. igor() takes no arguments and has no return value.

`void igor();`

b. tofu() takes an int argument and returns a float.

`float tofu(int );`

c. mpg() takes two type double arguments and returns a double.

`double mpg(double , double );`

d. summation() takes the name of a long array and an array size as values and returns a long value.

`long summation(long [], int );`

e. doctor() takes a string argument (the string is not to be modified) and returns a double value.

`double doctor(const char *);`

f. ofcourse() takes a boss structure as an argument and returns nothing.

`void ofcourse(boss );`

g. plot() takes a pointer to a map structure as an argument and returns a string.
`char * plot(map *);`

## 3. Write a function that takes three arguments: the name of an int array, the array size, and an int value. Have the function set each element of the array to the int value.

``` cpp
void func(int * arr, int size, int val) {
    for (int i=0; i<size; i++) {
        arr[i] = val;
    }
}
```

## 4. Write a function that takes three arguments: a pointer to the first element of a range in an array, a pointer to the element following the end of a range in an array, and an int value. Have the function set each element of the array to the int value.

See page 333.
``` cpp
void func(const int* begin, const int* end, int val) {
    const int* pt;
    for (pt=begin; pt != end; pt++) {
        *pt = val;
    }
}
```

## 5. Write a function that takes a double array name and an array size as arguments and returns the largest value in that array. Note that this function shouldn’t alter the contents of the array.

``` cpp
double func(const double* arr, const int size) {
    double amax = arr[0];
    for (int i=1; i<size; i++) {
        if (arr[i] > amax)
            amax = arr[i];
    }
    return double;
}
```

## 6. Why don’t you use the const qualifier for function arguments that are one of the fundamental types?

When the argument will be modified in the function.

## 7. What are the three forms a C-style string can take in a C++ program?

page 339. An array of char, A quoted string constant (also called a string literal), 
A pointer-to-char set to the address of a string

## 8. Write a function that has this prototype: int replace(char * str, char c1, char c2); Have the function replace every occurrence of c1 in the string str with c2, and have the function return the number of replacements it makes.

``` cpp
int replace(char* str, char c1, char c2) {
    // C++11 makes const char* from string literal

    int count = 0;

    while (*str) {
        if (*str == c1)
            count++;
        str++;
    }

    return count;

}
```

## 9. What does the expression *"pizza" mean? What about "taco"[2]?

*"pizza" means the start of char 'p' and "taco"[2] means 'c'.

## 10. C++ enables you to pass a structure by value, and it lets you pass the address of a structure. If glitz is a structure variable, how would you pass it by value? How would you pass its address? What are the trade-offs of the two approaches?

glitz* and glitz. The efficiency differs.

## 11. The function judge() has a type int return value.As an argument, it takes the address of a function.The function whose address is passed, in turn, takes a pointer to a const char as an argument and returns an int.Write the function prototype.

`int judge( int (*pf)(const char) );`

## 12. Suppose we have the following structure declaration:

struct applicant { char name[30]; int credit_ratings[3]; };

a. Write a function that takes an applicant structure as an argument and displays its contents.

b. Write a function that takes the address of an applicant structure as an argument and displays the contents of the pointed-to structure.

``` cpp
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
```

## 13. Suppose the functions f1() and f2() have the following prototypes:

void f1(applicant * a); const char * f2(const applicant * a1, const applicant * a2);

Declare p1 as a pointer that points to f1 and p2 as a pointer to f2. Declare ap as an array of five pointers of the same type as p1, and declare pa as a pointer to an array of ten pointers of the same type as p2. Use typedef as an aid.

``` cpp
void (*p1)(applicant*) = &f1;
const char* (*p2)(coonst applicant*, const applicant*) = &f2;

// using is better in C++11
typedef void (*p1_fun)(applicant*);
typedef const char* (*p2_fun)(coonst applicant*, const applicant*);
p1_fun ap[5];
p2_fun pb[10];
```