#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* source = "This is a long string that will cause a buffer overflow!";
    copyString(buffer, source);
    return 0;
}