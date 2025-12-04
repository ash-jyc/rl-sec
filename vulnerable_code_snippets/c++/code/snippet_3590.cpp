#include <cstring>
#include <iostream>

void unsafe_function(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* source = "This is a very long string that will cause a buffer overflow!";
    unsafe_function(buffer, source);
    std::cout << buffer << std::endl;
    return 0;
}