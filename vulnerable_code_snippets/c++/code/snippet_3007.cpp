#include <iostream>
#include <string.h>

void get_user_input(char* buffer) {
    std::cin >> buffer;
}

int main() {
    char buffer[10];
    get_user_input(buffer);
    std::cout << "User input: " << buffer << std::endl;
    return 0;
}