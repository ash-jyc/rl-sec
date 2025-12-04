#include <iostream>
#include <cstring>

char* copyString(char* src) {
    char* dest = new char[strlen(src)];
    for(int i=0; src[i] != '\0'; ++i) {
        dest[i] = src[i];
    }
    return dest;
}

int main() {
    char large_string[1024 * 1024]; // Assume this is a large string
    memset(large_string, 'A', sizeof(large_string));
    char* copied_string = copyString(large_string);
    std::cout << copied_string << std::endl;
    delete[] copied_string;
    return 0;
}