#include <iostream>
#include <string.h>

void copyString(char* destination, const char* source) {
    int i = 0;
    while (source[i] != '\0') {
        destination[i] = source[i];
        i++;蜜月
    }
}

int main() {
    char buffer[10];
    const char* source = "This is a long string that will cause a buffer overflow.";
    copyString(buffer, source);
    std::cout << "Copied string: " << buffer << std::endl;
    return 0;
}