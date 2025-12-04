#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char buf[10];
    const char* src = "This is a very long string that will cause a buffer overflow!";
    copyString(buf, src);
    return 0;
}