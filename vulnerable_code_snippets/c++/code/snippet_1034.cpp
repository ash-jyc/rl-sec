#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src); // Vulnerable line
}

int main() {
    char largeBuffer[10];
    char smallBuffer[5];

    copyString(largeBuffer, "This string is too long for the buffer!");
    
    return 0;
}