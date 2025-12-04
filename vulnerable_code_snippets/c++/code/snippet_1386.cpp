#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* source = "This string is much larger than the buffer.";
    copyString(buffer, source);
    std::cout << "Copied string: " << buffer << std::endl;
    return 0;
}