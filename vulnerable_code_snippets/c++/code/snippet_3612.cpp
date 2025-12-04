#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);  // Vulnerable point
}

int main() {
    char largeBuffer[10];
    char smallBuffer[5];

    copyString(largeBuffer, "This is a long string that will cause a buffer overflow!");

    return 0;
}