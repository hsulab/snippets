// stonewt1.cpp -- Stonewt class methods + conversion functions 
#include <iostream> 
using std::cout; 
#include "stonewt1.h"

// construct Stonewt object from double value 
Stonewt::Stonewt(double lbs) {
    stone = int (lbs) / Lbs_per_stn; // integer division
    pds_left = int (lbs) % Lbs_per_stn + lbs - int(lbs);
    pounds = lbs; 
}

// construct Stonewt object from stone, double values 
Stonewt::Stonewt(int stn, double lbs) {
    stone = stn;
    pds_left = lbs;
    pounds = stn * Lbs_per_stn +lbs; 
}

Stonewt::Stonewt() { // default constructor, wt = 0 
    stone = pounds = pds_left = 0; 
}

Stonewt::~Stonewt() { } // destructor

// show weight in stones 
void Stonewt::show_stn() const { cout << stone << " stone, " << pds_left << " pounds\n"; }

// show weight in pounds 
void Stonewt::show_lbs() const { cout << pounds << " pounds\n"; }

// conversion functions 
Stonewt::operator int() const {
    return int (pounds + 0.5);
}

Stonewt::operator double() const { 
    return pounds; 
}

// ChapterReview 1
Stonewt Stonewt::operator*(double s) const {
    // int s;
    double p; 
    // double pl;
    p = pounds*s;
    // s = int (p) / Lbs_per_stn; // integer division
    // pl = int (p) % Lbs_per_stn + p - int(p);
    return Stonewt(p);
}

Stonewt operator*(const Stonewt& s1, const Stonewt& s2) {
    double p; 
    p = s1.pounds*s2.pounds;
    return Stonewt(p);
}