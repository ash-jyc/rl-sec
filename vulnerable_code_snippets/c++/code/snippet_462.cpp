#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char largeBuffer[10];
    char smallBuffer[5];

    copyString(largeBuffer, "This string is much larger than the buffer.");
    copyString(smallBuffer, "This string fits.");

    return 0;
}