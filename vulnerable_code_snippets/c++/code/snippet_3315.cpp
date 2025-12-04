#include <iostream>
#include <string.h>

void func(char* buffer) {
    char local_buffer[10];
    strcpy(local_buffer, buffer);
}

int main() {
    char large_buffer[20] = "This is a large buffer";
    func(large_buffer);
    return 0;
}