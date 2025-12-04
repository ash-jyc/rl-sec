#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src); // No size check here
}

int main() {
    char buffer[10];
    const char* largeString = "This is a very long string that will cause a buffer overflow!";
    
    copyString(buffer, largeString);
    
    return 0;
}