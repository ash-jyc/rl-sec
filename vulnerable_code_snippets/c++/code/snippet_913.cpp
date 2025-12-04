#include <iostream>
#include <string.h>

void copy_data(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Data copied successfully!" << std::endl;
}

int main() {
    char large_input[20] = "This is a large input";
    copy_data(large_input);
    return 0;
}