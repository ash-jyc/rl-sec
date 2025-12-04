#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char userInput[10];
    std::cin >> userInput;
    char largeBuffer[256];
    copyString(largeBuffer, userInput);
    return 0;
}