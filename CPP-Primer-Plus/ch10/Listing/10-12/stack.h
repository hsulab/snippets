#ifndef STACK_H
#define STACK_H

typedef unsigned long Item;

class Stack {

    public:
        Stack();
        bool isempty() const;
        bool isfull() const;
        // push() returens false if stack already is full, otherwise true
        bool push(const Item & item); // add item to stack
        // pop() returns false if stack already is empty, otherwise true
        bool pop(Item & item);
    
    private:
        enum {MAX = 10};
        Item items[MAX];
        int top;
};


#endif