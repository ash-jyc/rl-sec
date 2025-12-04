#include <cstring>

void copyString(char* source) {
    char dest[10];
    strcpy(dest, source);
}

int main() {
    char largeSource[20] = "This is a large string";
    copyString(largeSource);
    return 0;
}