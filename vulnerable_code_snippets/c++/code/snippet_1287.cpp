#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* source = "This string is too long for the buffer!";
    copyString(buffer, source);
    return 0;
}