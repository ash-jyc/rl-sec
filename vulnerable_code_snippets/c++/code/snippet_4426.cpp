#include <iostream>
#include <string.h>

int main() {
    char buffer[10];
    char input[20];
    std::cin >> input;
    strcpy(buffer, input);
    std::cout << "Buffer content: " << buffer << std::endl;
    return 0;
}