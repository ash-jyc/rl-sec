#include <cstring>

void copyString(char* dest, const char* src) {
    std::strcpy(dest, src);
}

int main() {
    char largeString[10] = "This is a very large string";
    char smallBuffer[5];
    copyString(smallBuffer, largeString);
    return 0;
}