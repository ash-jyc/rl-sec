#include <iostream>
#include <cstring>

int main() {
    char buffer[10];
    char input[20] = "This is a long string";
    strcpy(buffer, input);
    std::cout << "Buffer content: " << buffer << std::endl;
    return 0;
}