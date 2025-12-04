#include <iostream>
#include <string.h>

void copy_input(char* dest, char* src) {
    strcpy(dest, src);
}

int main() {
    char buf[10];
    char input[20];

    std::cout << "Enter your input: ";
    std::cin >> input;

    copy_input(buf, input);

    std::cout << "Your input is: " << buf << std::endl;

    return 0;
}