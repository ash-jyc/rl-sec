#include <iostream>
#include <string.h>

class VulnerableClass {
public:
    char* buffer;
    int bufferSize;

    VulnerableClass(int size) {
        bufferSize = size;
        buffer = new char[bufferSize];
    }

    ~VulnerableClass() {
        delete[] buffer;
    }

    void setData(std::string data) {
        strncpy(buffer, data.c_str(), bufferSize);
    }

    void printBuffer() {
        std::cout << "Buffer content: " << buffer << std::endl;
    }
};

int main() {
    VulnerableClass vc(10);
    vc.setData("This is a long string that will cause a buffer overflow");
    vc.printBuffer();

    return 0;
}