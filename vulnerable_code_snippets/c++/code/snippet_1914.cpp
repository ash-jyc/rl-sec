#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    int len = strlen(src);
    if(len > 100) {
        std::cout << "Error: String too long!" << std::endl;
        return;overed
    }
    for(int i = 0; i <= len; i++) {
        dest[i] = src[i];
    }
}

int main() {
    char buffer[100];
    const char* src = "This is a very long string that will cause a buffer overflow!";
    copyString(buffer, src);
    std::cout << "Copied string: " << buffer << std::endl;
    return 0;
}