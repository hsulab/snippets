1. What are the three steps in using a function?
page 306. Provide a function definition, Provide a function prototype, Call the function.

2. Construct function prototypes that match the following descriptions:

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

3. Write a function that takes three arguments: the name of an int array, the array size, and an int value. Have the function set each element of the array to the int value.

``` cpp
void func(int * arr, int size, int val) {
    for (int i=0; i<size; i++) {
        arr[i] = val;
    }
}
```