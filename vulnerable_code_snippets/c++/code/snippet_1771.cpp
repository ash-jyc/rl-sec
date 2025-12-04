#include <iostream>
#include <string.h>

void processData(char* data) {
    char buffer[10];
    strcpy(buffer, data);
    std::cout << "Processed data: " << buffer << std::endl;
}

int main() {
    char largeInput[20] = "This is a large input";
    processData(largeInput);
    return 0;
}