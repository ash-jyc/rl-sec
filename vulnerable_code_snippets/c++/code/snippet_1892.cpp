#include <string.h>

void copyString(char* dest, char* src) {
    strcpy(dest, src);  // Vulnerable function: strcpy does not check for buffer overflow
}

int main() {
    char largeSource[1000];
    char smallDestination[50];
    memset(largeSource, 'A', sizeof(largeSource));  // Fill with 'A's
    copyString(smallDestination, largeSource);  // This will cause buffer overflow
    return 0;
}