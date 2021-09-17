// stone1.cpp -- user-defined conversion functions 
// compile with stonewt1.cpp 
#include <iostream> 
#include "stonewt1.h"

int main() {
    using std::cout; 
    Stonewt poppins(9,2.8); // 9 stone, 2.8 pounds 
    double p_wt = poppins; // implicit conversion 
    cout << "Convert to double => "; 
    cout << "Poppins: " << p_wt << " pounds.\n"; 
    cout << "Convert to int => "; 
    cout << "Poppins: " << int (poppins) << " pounds.\n"; 
    // ChapterReview 1 using operator*
    Stonewt pop2 = poppins*2.0;
    cout << "Double Poppins: " << int (pop2) << " pounds.\n"; 
    Stonewt pop3 = pop2*poppins;
    cout << "Double Poppins: " << int (pop3) << " pounds.\n"; 
    return 0;
}