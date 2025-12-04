#include <iostream>
#include <string.h>

class VulnerableClass {
public:
    char buffer[10];

    void copyInput(char* input) {
        strcpy(buffer, input);
    }
};

int main() {
    VulnerableClass vc;
    char largeInput[] = "This is a very large input that will cause a buffer overflow!";
    vc.copyInput(largeInput);
    std::cout << "Buffer content: " << vc.buffer << std::endl;
    return 0;
}