#include <cstring>

void copyString(char* src) {
    char dest[10];
    strcpy(dest, src);  // Vulnerable line
}

int main() {
    char largeString[20] = "This is a large string";
    copyString(largeString);
    return 0;
}