#include <iostream>
#include <string.h>

using namespace std;

void vulnerableFunction(char* inputString) {
    char buffer[10];
    strcpy(buffer, inputString);
    cout << "Buffer content: " << buffer << endl;
}

int main() {
    char largeInput[20] = "This is a large string";
    vulnerableFunction(largeInput);
    return 0;
}