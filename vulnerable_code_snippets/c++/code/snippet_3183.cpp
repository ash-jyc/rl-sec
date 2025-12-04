#include <iostream>
#include <cstring>

void unsafe_function(int index) {
    char buffer[10];
    char data[] = "Hello, World!";
    
    strcpy(buffer, data);
    std::cout << buffer[index] << std::endl;
}

int main() {
    int user_input;
    std::cin >> user_input;
    unsafe_function(user_input);
    return 0;
}