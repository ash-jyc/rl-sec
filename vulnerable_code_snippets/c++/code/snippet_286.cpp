#include <string.h>
#include <stdio.h>

void copyInput(char* buffer, int size) {
    gets(buffer);
}

int main() {
    char buffer[10];
    copyInput(buffer, 20);
    printf("%s\n", buffer);
    return 0;
}