#include <iostream>
#include <string.h>

void copyString(char* src, char* dest) {
    for(int i=0; src[i] != '\0'; ++i) {
        dest[i] = src[i];
    }
}

int main() {
    char src[10] = "HelloWorld";
    char dest[5];
    copyString(src, dest);
    std::cout << dest << std::endl;
    return 0;
}