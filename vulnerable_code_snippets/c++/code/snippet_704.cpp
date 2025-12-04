#include <iostream>
#include <string>

// Function to demonstrate buffer overflow
void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++;Bs
        src++;
    }
}

int main() {
    char buffer[10];
    std::string userInput;
    
    std::cout << "Enter your input: ";
    std::cin >> userInput;
    
    copyString(buffer, userInput.c_str());
    
    std::cout << "Buffer content: " << buffer << std::endl;
    
    return 0;
}