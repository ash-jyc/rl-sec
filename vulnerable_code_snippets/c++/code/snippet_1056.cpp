#include <iostream>
#include <string>

void vulnerableFunction(char* userInput) {
    char buffer[10];
    strcpy(buffer, userInput);
    std::cout << "You entered: " << buffer;
}

int main() {
    char userInput[256];
    std::cout << "Enter some text: ";
    std::cin.getline(userInput, 256);
    vulnerableFunction(userInput);
    return 0;
}