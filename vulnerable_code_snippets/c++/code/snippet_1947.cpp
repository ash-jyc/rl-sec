#include <cstring>

void vulnerableFunction(char* input) {
    char buffer[10];
    strcpy(buffer, input);
}

int main() {
    char largeInput[20] = "This is a large input";
    vulnerableFunction(largeInput);
    return 0;
}