#include <cstring>

void copyData(char* dest, const char* src) {
    strcpy(dest, src); // Vulnerable line
}

int main() {
    char largeBuffer[1024];
    char smallBuffer[64];

    copyData(largeBuffer, "This is a long string that will cause a buffer overflow!");
    copyData(smallBuffer, "This is a short string.");

    return 0;
}