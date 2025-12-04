#include <iostream>
#include <string.h>

void copyString(char* dest, char* src) {
    strcpy(dest, src);
}

int main() {
    char src[10];
    char dest[5];

    std::cout << "Enter a string: ";
    std::cin >> src;

    copyString(dest, src);

    std::cout << "Copied string: " << dest << std::endl;

    return 0;
}