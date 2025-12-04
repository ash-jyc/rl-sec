#include <iostream>
#include <string.h>

void copy_data(char* dest, int size, char* src) {
    for (int i = 0; i <= size; i++) {
        dest[i] = src[i];
    }
}

int main() {
    char buffer[10];
    char data[] = "This is a long string that will cause a buffer overflow";
    copy_data(buffer, sizeof(buffer), data);
    std::cout << buffer << std::endl;
    return 0;
}