#include <iostream>
#include <string.h>

using namespace std;

void function1(char* input) {
    char buffer[8];
    strcpy(buffer, input);
}

int main() {
    char large_input[20] = "This is a large input";
    function1(large_input);
    return 0;
}