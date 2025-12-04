#include <iostream>
#include <cstring>

int main() {
    char buffer[10];
    char source[] = "This is a long string that will cause a buffer overflow!";
    
    // Improper use of strcpy function
    strcpy(buffer, source);
    
    std::cout << "Buffer content: " << buffer << std::endl;
    
    return 0;
}