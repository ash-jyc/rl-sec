#include <iostream>
#include <string.h>

class VulnerableClass {
public:
    char buffer[10];

    void setData(char* data) {
        strcpy(buffer, data);
    }

    void printData() {
        std::cout << "Buffer content: " << buffer << std::endl;
    }
};

int main() {
    VulnerableClass vc;
    char largeInput[20] = "This is a large input";
    vc.setData(largeInput);
    vc.printData();

    return 0;
}