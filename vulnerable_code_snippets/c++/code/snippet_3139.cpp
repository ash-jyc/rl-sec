#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char smallBuffer[10];
    char largeString[] = "This is a very large string that will cause a buffer overflow!";

    copyString(smallBuffer, largeString);

    return 0;
}