#include "golf.h"

const int Size = 3;

int main() {
    // input
    golf g[Size];
    for (int i = 0; i < Size ; i++) {
        int ret = setgolf(g[i]);
        if (ret == 0) {
            continue;
        }
        showgolf(g[i]);
    }

    // change 
    golf ann; 
    setgolf(ann, "Ann Birdfree", 24);
    showgolf(ann);
    handicap(ann, 100);
    showgolf(ann);

    return 0;
}