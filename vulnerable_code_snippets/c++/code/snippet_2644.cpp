#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src); // Vulnerable line
}

int main() {
    char smallBuffer[10];
    char largeString[] = "This is a very long string that will cause a buffer overflow!";

    copyString(smallBuffer, largeString);

    return 0;
}