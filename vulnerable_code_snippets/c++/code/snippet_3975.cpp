#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src); // Vulnerable strcpy function
}

int main() {
    char src[10] = "Hello World";
    char dest[5];
    copyString(dest, src);
    return 0;
}