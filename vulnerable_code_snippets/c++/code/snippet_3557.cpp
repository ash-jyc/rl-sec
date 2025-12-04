#include <iostream>
#include <string.h>

using namespace std;

void copyMessage(char* message) {
    char buffer[10];
    strcpy(buffer, message);
    cout << "Copied message: " << buffer << endl;
}

int main() {
    char largeMessage[20] = "This is a large message";
    copyMessage(largeMessage);
    return 0;
}