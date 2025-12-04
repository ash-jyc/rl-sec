#include <iostream>
#include <vector>

int main() {
    std::vector<char> buffer(10);
    char *input = new char[20];
    std::cin >> input;
    
    for(int i = 0; i < 20; ++i) {
        buffer[i] = input[i];
    }
    
    delete[] input;
    return 0;
}