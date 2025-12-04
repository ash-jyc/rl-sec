#include <iostream>
#include <string.h>

void processData(char* data) {
    char buffer[10];
    strcpy(buffer, data);
}

int main() {
    char large_data[20] = "This is a large string";
    processData(large_data);
    return 0;
}