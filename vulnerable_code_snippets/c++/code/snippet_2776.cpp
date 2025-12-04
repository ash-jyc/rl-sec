#include <string>
#include <iostream>

using namespace std;

void processMessage(char* message) {
    char buffer[10];
    strcpy(buffer, message);
    cout << "Received Message: " << buffer << endl;
}

int main() {
    char largeMessage[20] = "This is a large message";
    processMessage(largeMessage);
    return 0;
}