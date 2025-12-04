#include <iostream>
#include <string.h>
#define MAX_SIZE 10

class VulnerableClass {
private:
    char buffer[MAX_SIZE];
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
    char largeData[20] = "This is a large string";
    vc.setData(largeData);
    vc.printData();
    return 0;
}