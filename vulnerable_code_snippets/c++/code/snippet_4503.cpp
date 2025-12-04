#include <cstring>
#include <iostream>

void copyAndPrint(char* source) {
    char destination[10];
    std::strcpy(destination, source);
    std::cout << "Copied string: " << destination << std::endl;
}

int main() {
    char largeString[] = "This is a very long string that will cause a buffer overflow!";
    copyAndPrint(largeString);
    return 0;
}