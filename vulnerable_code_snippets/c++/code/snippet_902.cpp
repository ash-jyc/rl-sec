#include <iostream>
#include <string.h>

class VulnerableClass {
public:
    char buffer[10];

    void copyData(char* input) {
        strcpy(buffer, input);
    }
};

int main() {
    VulnerableClass vc;
    char largeInput[20] = "This is a large input";
    vc.copyData(largeInput);
    std::cout << vc.buffer << std::endl;
    return 0;
}