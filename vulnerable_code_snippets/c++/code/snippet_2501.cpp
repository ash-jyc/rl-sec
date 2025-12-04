#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* src = "This is a very long string that will cause a buffer overflow because it is longer than the buffer.";
    copyString(buffer, src);
    return 0;
}