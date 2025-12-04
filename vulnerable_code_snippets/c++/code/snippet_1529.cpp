#include <iostream>
#include <string.h>

class VulnerableClass {
private:
    char buffer[10];
public:
    void setData(char* data) {
        strcpy(buffer, data);
    }
    void printData() {
        std::cout << "Buffer content: " << buffer << std::endl;
    }
};

int main() {
    VulnerableClass vc;
    char largeData[20] = "This is a large data";
    vc.setData(largeData);
    vc.printData();
    return 0;
}