#include <iostream>
using namespace std;

int main() {
    char buffer[10];
    for(int i = 0; i <= 10; i++) {
        buffer[i] = 'A';
    }
    buffer[10] = '\0';
    cout << "Buffer content: " << buffer << endl;
    return 0;
}