#include <iostream>
#include <string.h>

void vulnerable_function(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Input copied to buffer: " << buffer << std::endl;
}

int main() {
    char user_input[20];
    std::cout << "Enter your input: ";
    std::cin >> user_input;
    vulnerable_function(user_input);
    return 0;
}