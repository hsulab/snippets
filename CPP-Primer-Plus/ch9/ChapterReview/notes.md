# 1. What storage scheme would you use for the following situations?

a. homer is a formal argument (parameter) to a function.

Automatic storage.

b. The secret variable is to be shared by two files.

Static duration with external linkage.

c. The topsecret variable is to be shared by the functions in one file but hidden from other files.

Static duration with internal linkage.

d. beencalled keeps track of how many times the function containing it has been called.

Static duration with no linkage.

# 2. Describe the differences between a using declaration and a using directive.

using declaration only imports the declared name which using directive imports all names.

# 3. Rewrite the following so that it doesn’t use using declarations or using directives:

``` cpp
#include <iostream> 
using namespace std; 
int main() {
    double x; 
    cout << "Enter value: "; 
    while (! (cin >> x) ) {
        cout << "Bad input. Please enter a number: ";
        cin.clear();
        while (cin.get() != '\n')
            continue;
    } 
    cout << "Value = " << x << endl; 
    return 0;
}
```

# 4. Rewrite the following so that it uses using declarations instead of the using directive:

``` cpp
#include <iostream> 
using namespace std; 
int main() {
    double x; 
    cout << "Enter value: "; 
    while (! (cin >> x) ) {
        cout << "Bad input. Please enter a number: ";
        cin.clear();
        while (cin.get() != '\n')
            continue; 
    } 
    cout << "Value = " << x << endl; 
    return 0;
}
```

# 5. Suppose you want the average(3,6) function to return an int average of the two int arguments when it is called in one file, and you want it to return a double average of the two int arguments when it is called in a second file in the same program. How could you set this up?

Use static to give the function internal linkage.

# 6. What will the following two-file program display?

``` cpp
// file1.cpp 
#include <iostream> 
using namespace std; 
void other(); 
void another();
int x = 10;
int y;

int main() {
    cout << x << endl; 
    {
        int x = 4;
        cout << x << endl; 
        cout << y << endl;
    } 
    other(); 
    another(); 
    return 0;
}

void other() {
    int y = 1;
    cout << "Other: " << x << ", " << y << endl;
}

// file 2.cpp 
#include <iostream> 
using namespace std; 
extern int x; 

namespace {
    int y = -4;
}

void another() { 
    cout << "another(): " << x << ", " << y << endl; 
}
```

# 7. What will the following program display?

``` cpp
#include <iostream> 
using namespace std; 
void other(); 
namespace n1 {
    int x = 1;
}

namespace n2 {
    int x = 2;
}

int main() {
    using namespace n1; 
    cout << x << endl; 
    {
        int x = 4;
        cout << x << ", " << n1::x << ", " << n2::x << endl;
    } 
    using n2::x; 
    cout << x << endl; 
    other(); 
    return 0;
}

void other() {
    using namespace n2; 
    cout << x << endl; 
    {
        int x = 4;
        cout << x << ", " << n1::x << ", " << n2::x << endl;
    } 
    using n2::x; 
    cout << x << endl;
}
```