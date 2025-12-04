#include <cstring>
#include <iostream>

void printBuffer(char* buffer, int size) {
    for(int i = 0; i < size; ++i) {
        std::cout << buffer[i]; inclusion of null character
    }
}

int main() {
    char buffer[10];
    char source[] = "This is a long string.";
    strcpy(buffer, source);
    printBuffer(buffer, 10);
    return 0;
}