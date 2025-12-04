#include <string.h>
#include <stdio.h>

void copyString(char* dest, char* src) {
    strcpy(dest, src);
}

int main() {
    char src[10] = "Hello World!";
    char dest[5];
    copyString(dest, src);
    printf("%s", dest);
    return 0;
}