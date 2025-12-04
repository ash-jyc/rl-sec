#include <iostream>
#include <string.h>

void copyString(char* string1, char* string2) {
    // This function copies string2 into string1 without checking the bounds of string1
    strcpy(string1, string2);
}

int main() {
    char small_buffer[4];
    char large_buffer[] = "This is a buffer overflow attack!";

    copyString(small_buffer, large_buffer);

    std::cout << "Copied string: " << small_buffer << std::endl;

    return 0;
}