#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char largeBuffer[10];
    char smallBuffer[5];

    copyString(largeBuffer, "Hello, World!");
    copyString(smallBuffer, "Hi!");

    return 0;
}