#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src); // Vulnerable function
}

int main() {
    char largeBuffer[10];
    char smallBuffer[5];

    copyString(largeBuffer, "Hello, World!"); // This will cause buffer overflow

    return 0;
}