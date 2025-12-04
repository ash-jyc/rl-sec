#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* tooLongString = "This string is much longer than the buffer.";
    copyString(buffer, tooLongString);
    return 0;
}