#include <iostream>
#include <cstring>

void copyData(char* dest, const char* src, int len) {
    std::strncpy(dest, src, len);
}

int main() {
    const int SIZE = 10;
    char dest[SIZE];
    const char* src = "This is a very long string that will cause a buffer overflow!";
    
    copyData(dest, src, SIZE);

    std::cout << "Copied Data: " << dest << std::endl;

    return 0;
}