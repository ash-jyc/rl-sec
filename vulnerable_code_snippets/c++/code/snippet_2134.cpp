#include <iostream>
#include <string.h>

int main() {
    char buffer[10];
    std::cout << "Enter your message: ";
    std::cin >> buffer;
    std::cout << "Your message is: " << buffer << std::endl;
    return 0;
}