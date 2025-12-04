#include <iostream>
#include <string.h>

class VulnerableClass {
public:
    char buffer[10];

    void setData(char* data) {
        strcpy(buffer, data);
    }

    void printData() {
        std::cout << "Data: " << buffer << std::endl;
    }
};

int main() {
    VulnerableClass vc;
    char largeData[20] = "This is a large string";
    vc.setData(largeData);
    vc.printData();
    
    return 0;
}