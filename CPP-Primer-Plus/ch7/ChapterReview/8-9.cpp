#include <iostream>

int replace(char* str, char c1, char c2);

int main() {
    char* str = "abc";
    int count;

    std::cout << str << std::endl;
    count = replace(str, 'a', 'b');
    std::cout << str << std::endl;
    std::cout << count << std::endl;
    std::cout << *"pizza" << std::endl;
    std::cout << "taco"[2] << std::endl;

    return 0;

}

int replace(char* str, char c1, char c2) {

    int index = 0;
    int count = 0;
    
    int size = strlen(str);
    // std::cout << size << std::endl;

    char *str2 = new char[size+1];
    strcpy(str2, str);

    for (int i=0; i<size; i++) {
        if (str[i] == c1) {
            str2[i] = c2;
            count++;
        }
    }
    std::cout << str2 << std::endl;

    str = str2;

    delete [] str2;

    return count;

}