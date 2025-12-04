#include <iostream>
#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* input = "This is a long string that will cause a buffer overflow!";
    copyString(buffer, input);
    std::cout << "The buffer contains: " << buffer << std::endl;
    return 0;
}