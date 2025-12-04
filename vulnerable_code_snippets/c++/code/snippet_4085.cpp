#include <string.h>
#include <stdio.h>

void func(char* userInput) {
    char buffer[10];
    strcpy(buffer, userInput);
    printf("%s\n", buffer);
}

int main() {
    char largeInput[20] = "This is a large input";
    func(largeInput);
    return 0;
}