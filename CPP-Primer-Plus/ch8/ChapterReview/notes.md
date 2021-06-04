# 1. What kinds of functions are good candidates for inline status?

page 380. the time to execute the function is much longer than the time to handle the function call.

# 2. Suppose the song() function has this prototype:

`void song(const char * name, int times);`

a. How would you modify the prototype so that the default value for times is 1?

`void song(const char * name, int times = 1);`

b. What changes would you make in the function definition?

Nothing is needed.

c. Can you provide a default value of "O, My Papa" for name?

`void song(const char * name = "O, My PaPa", int times = 1);`

# 3. Write overloaded versions of iquote(), a function that displays its argument enclosed in double quotation marks.Write three versions: one for an int argument, one for a double argument, and one for a string argument.

``` cpp
void iquote(int x) {
    std::cout << "\"" << x << "\"" << std::endl;
}
void iquote(double x) {
    std::cout << "\"" << x << "\"" << std::endl;
}
void iquote(string x) {
    std::cout << "\"" << x << "\"" << std::endl;
}
```

# 4. The following is a structure template:

``` cpp
struct box { 
    char maker[40]; 
    float height; 
    float width; 
    float length; 
    float volume; 
};
```

a. Write a function that has a reference to a box structure as its formal argument and displays the value of each member.

``` cpp
void show(box& b) {
    std::cout << b.maker << std::endl;
}
```

b. Write a function that has a reference to a box structure as its formal argument and sets the volume member to the product of the other three dimensions.

``` cpp
void show(box& b) {
    b.volume = b.height*b.width*b.length;
}
```

5. What changes would need be made to Listing 7.15 so that the functions fill() and show() use reference parameters?

``` cpp
void fill(std::array<double, Seasons>& ra); 
void show(std::array<double, Seasons>& ra);
```

# 6. The following are some desired effects. Indicate whether each can be accomplished with default arguments, function overloading, both, or neither. Provide appropriate prototypes.

a. mass(density, volume) returns the mass of an object having a density of

density and a volume of volume, whereas mass(density) returns the mass

having a density of density and a volume of 1.0 cubic meters.All quantities are type double.

``` cpp
double mass(double density, double volume = 1.0);
```

b. repeat(10, "I'm OK") displays the indicated string 10 times, and

repeat("But you're kind of stupid") displays the indicated string 5

times.

``` cpp
void repeat(string str, int times = 5);
```

c. average(3,6) returns the int average of two int arguments, and

average(3.0, 6.0) returns the double average of two double values.

``` cpp
int average(int a, int b);
double average(double a, double b);
```

d. mangle("I'm glad to meet you") returns the character I or a pointer to

the string "I'm mad to gleet you", depending on whether you assign the return value to a char variable or to a char* variable.

Neither...

# 7. Write a function template that returns the larger of its two arguments.

``` cpp
template <typename T>
T larger(T a, T b) {
    return a>b?a:b;
}
```

# 8. Given the template of Chapter Review Question 7 and the box structure of Chapter Review Question 4, provide a template specialization that takes two box arguments and returns the one with the larger volume.

``` cpp
template <> box larger<box>(box& b1, box& b2) {
    return b1.volume>b2.volume?b1:b2;
}
```

# 9. What types are assigned to v1, v2, v3, v4, and v5 in the following code (assuming the code is part of a complete program)?

int g(int x); 
...
float m = 5.5f;
float & rm = m;
decltype(m) v1 = m; 
decltype(rm) v2 = m; 
decltype((m)) v3 = m; 
decltype (g(100)) v4; 
decltype (2.0 * m) v5;

v1 is float, v2 is float&, v3 is float&, v4 is int, v5 is float.