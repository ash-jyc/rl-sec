#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char largeBuffer[10];
    const char* smallString = "Hello, World!";

    copyString(largeBuffer, smallString);

    return 0;
}